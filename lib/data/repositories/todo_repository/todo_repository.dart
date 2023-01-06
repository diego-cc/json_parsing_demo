import 'package:json_parsing_demo/data/dto/todo/responses/todo_response.dart';
import 'package:result_type/result_type.dart';

abstract class TodoRepository {
  Future<Result<TodoResponse?, String?>> getTodo(String uuid);
  Future<Result<List<TodoResponse>?, String?>> getTodos();
}
