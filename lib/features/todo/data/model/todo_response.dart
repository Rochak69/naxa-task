import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_response.freezed.dart';
part 'todo_response.g.dart';

@freezed
class TodoResponse with _$TodoResponse {
  const factory TodoResponse({
    int? id,
    String? todo,
    int? completed,
    int? userId,
  }) = _TodoResponse;

  factory TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseFromJson(json);
}
