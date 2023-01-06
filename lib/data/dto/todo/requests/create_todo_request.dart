import 'package:json_annotation/json_annotation.dart';

part 'create_todo_request.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class CreateTodoRequest {
  final String? description;
  final bool? isCompleted;

  CreateTodoRequest({
    this.description,
    this.isCompleted,
  });

  factory CreateTodoRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTodoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateTodoRequestToJson(this);
}
