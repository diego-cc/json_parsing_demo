import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_response.freezed.dart';
part 'todo_response.g.dart';

@freezed
class TodoResponse with _$TodoResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TodoResponse({
    String? uuid,
    String? description,
    bool? isCompleted,
  }) = _TodoResponse;

  factory TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseFromJson(json);
}
