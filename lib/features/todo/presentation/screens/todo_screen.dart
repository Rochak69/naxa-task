import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/common/app_loading_widget.dart';
import 'package:project_init/features/todo/presentation/provider/provider.dart';

class TodoScreen extends ConsumerStatefulWidget {
  const TodoScreen({super.key});

  @override
  ConsumerState<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends ConsumerState<TodoScreen> {
  final ScrollController _scrollController = ScrollController(); // 1

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollListener);
    super.dispose();
  }

  void _onScrollListener() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    const delta = 200.0;
    if (maxScroll - currentScroll <= delta) {
      ref.read(todoListProvider.notifier).loadNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(todoListProvider);

    return SafeArea(
      child: (state.value?.items.isEmpty ?? true) && state.isLoading
          ? const Center(
              child: AppLoadingWidget(),
            )
          : Column(
              children: [
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      //Erase local data and set new data from remote source again
                      ref.read(todoListProvider.notifier).eraseDataAndReload();
                    },
                    child: ListView.builder(
                      itemCount: state.value?.items.length ?? 0,
                      controller: _scrollController,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemBuilder: (context, index) => Column(
                        children: [
                          CheckboxListTile(
                            activeColor: AppColors.primaryDark,
                            value: state.value?.items[index].completed == 1,
                            onChanged: (value) {},
                            title: Text(state.value?.items[index].todo ?? ''),
                            secondary: CircleAvatar(
                              backgroundColor: AppColors.primaryYellow,
                              child: Text(index.toString()),
                            ),
                          ),
                          if (state.isLoading &&
                              state.value?.items.length == index + 1)
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: AppLoadingWidget.small(),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
