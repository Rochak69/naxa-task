import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:project_init/core/dependency_injection/dependency_injection.dart';
import 'package:project_init/core/dio_provider/api_response.dart';
import 'package:project_init/core/usecase/usecase.dart';
import 'package:project_init/features/todo/data/source/local/todo_database_helper.dart';
import 'package:project_init/features/todo/domain/usecase/get_todo_count_usecase.dart';
import 'package:project_init/features/todo/domain/usecase/get_todo_usecase.dart';
import 'package:project_init/features/todo/domain/usecase/todo_usecase.dart';
import 'package:project_init/features/todo/presentation/provider/state/todo_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  Future<TodoPageState> build() async {
    final getTodoCountUsecase = sl<GetTodoCountUsecase>();
    final getTodoUsecase = sl<GetTodoUsecase>();
    final setTodoUsecase = sl<SetTodoUsecase>();
    final totalCount = await getTodoCountUsecase(NoParam());
    await totalCount.fold(
      (l) {},
      (r) async {
        if (r < 1) {
          await setTodoUsecase.call(NoParam());
        }
      },
    );
    final result = await getTodoUsecase.call(GetTodoParam(page: 1));

    return await result.fold(
      (l) {
        throw l;
      },
      (r) async {
        final count = await getTodoCountUsecase.call(NoParam());
        return TodoPageState(
          items: r,
          paginationInfo: PaginationInfo(
            currentPage: 1,
            total: count.fold(
              (l) => 0,
              (r) => r,
            ),
          ),
        );
      },
    );
  }

  Future<void> loadNextPage() async {
    if (state is AsyncLoading) {
      debugPrint('Already loading next page');
      return;
    }
    if (!state.requireValue.hasMore) {
      debugPrint('No more pages to load');
      return;
    }
    debugPrint('Loading pages');
    state = const AsyncLoading();

    final results = await sl<GetTodoUsecase>().call(
      GetTodoParam(page: state.value?.paginationInfo?.currentPage ?? 1),
    );
    results.fold(
      (l) => throw l,
      (r) {
        state = AsyncValue.data(
          TodoPageState(
            items: [
              ...state.requireValue.items,
              ...r,
            ],
            paginationInfo: state.value?.paginationInfo?.copyWith(
              currentPage: (state.value?.paginationInfo?.currentPage ?? 0) + 1,
            ),
          ),
        );
      },
    );
  }

  Future<void> eraseDataAndReload() async {
    state = const AsyncValue.data(TodoPageState(items: []));
    state = const AsyncLoading();
    await sl<TodoDatabaseHelper>().clearAllTodos();
    ref.invalidateSelf();
  }
}
