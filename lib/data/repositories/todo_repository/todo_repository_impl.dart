import 'dart:io';

import 'package:dio/dio.dart';
import 'package:json_parsing_demo/app/app.locator.dart';
import 'package:json_parsing_demo/data/data_sources/remote/apis/todo_api.dart';
import 'package:json_parsing_demo/data/dto/todo/responses/todo_response.dart';
import 'package:json_parsing_demo/data/repositories/todo_repository/todo_repository.dart';
import 'package:result_type/result_type.dart';

class TodoRepositoryImpl implements TodoRepository {
  final _todoApi = locator<TodoApi>();

  @override
  Future<Result<List<TodoResponse>?, String?>> getTodos() async {
    try {
      final todosResponse = await _todoApi.getTodos();

      if (todosResponse.success ?? false) {
        final rawTodoList = todosResponse.payload?['rows'] as List?;

        final todoList = rawTodoList
            ?.map((e) => TodoResponse.fromJson(e as Map<String, dynamic>))
            .toList();

        return Success(todoList);
      }

      return Failure(todosResponse.error);
    } on DioError catch (err) {
      final errorMsg =
          'Could not fetch TODOs. Status: ${err.response?.statusCode}, Response: ${err.response?.data}';

      return Failure(errorMsg);
    } on FormatException catch (err) {
      final errorMsg =
          'Could not fetch TODOs. Message: ${err.message}, Source: ${err.source}, Offset: ${err.offset}';

      return Failure(errorMsg);
    } on SocketException catch (err) {
      final errorMsg =
          'Could not fetch TODOs. Message: ${err.message}, Address: ${err.address}, Port: ${err.port}';

      return Failure(errorMsg);
    }
  }

  @override
  Future<Result<TodoResponse?, String?>> getTodo(String uuid) async {
    try {
      final todoResponse = await _todoApi.getTodo(uuid);

      if (todoResponse.success ?? false) {
        if (todoResponse.payload != null) {
          final todo = TodoResponse.fromJson(todoResponse.payload!);
          return Success(todo);
        }
        return Success(null);
      }

      return Failure(todoResponse.error);
    } on DioError catch (err) {
      final errorMsg =
          'Could not fetch TODO. Status: ${err.response?.statusCode}, Response: ${err.response?.data}';

      return Failure(errorMsg);
    } on FormatException catch (err) {
      final errorMsg =
          'Could not fetch TODO. Message: ${err.message}, Source: ${err.source}, Offset: ${err.offset}';

      return Failure(errorMsg);
    } on SocketException catch (err) {
      final errorMsg =
          'Could not fetch TODO. Message: ${err.message}, Address: ${err.address}, Port: ${err.port}';

      return Failure(errorMsg);
    }
  }
}
