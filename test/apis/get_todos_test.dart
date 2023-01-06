import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:json_parsing_demo/app/app.locator.dart';
import 'package:json_parsing_demo/data/data_sources/remote/apis/todo_api.dart';
import 'package:json_parsing_demo/data/data_sources/remote/clients/rest_dio_client.dart';
import 'package:json_parsing_demo/data/dto/todo/responses/todo_response.dart';
import 'package:json_parsing_demo/data/repositories/todo_repository/todo_repository.dart';
import 'package:json_parsing_demo/data/repositories/todo_repository/todo_repository_impl.dart';

import '../helpers/retrofit_url_matcher.dart';

void main() {
  group('GET TODOs - ', () {
    setUpAll(() => TestWidgetsFlutterBinding.ensureInitialized());
    setUp(() {
      final dio = RestDioClient.getBasicClient();
      final dioAdapter = DioAdapter(
        dio: dio,
        matcher: RetrofitUrlMatcher(),
      );

      dioAdapter.onGet(
        '/todos',
        (server) async {
          final rawTodosResponse = await rootBundle.loadString(
            'assets/mocks/get_todos_successful_response.json',
          );
          final mappedTodosResponse =
              jsonDecode(rawTodosResponse) as Map<String, dynamic>;

          return server.reply(HttpStatus.ok, mappedTodosResponse);
        },
      );

      if (!locator.isRegistered<TodoApi>()) {
        locator.registerLazySingleton<TodoApi>(
          () => TodoApi.getInstance(dioAdapter.dio),
        );
      }

      if (!locator.isRegistered<TodoRepository>()) {
        locator.registerLazySingleton<TodoRepository>(
          () => TodoRepositoryImpl(),
        );
      }
    });

    tearDown(() {
      if (locator.isRegistered<TodoApi>()) {
        locator.unregister<TodoApi>();
      }

      if (locator.isRegistered<TodoRepository>()) {
        locator.unregister<TodoRepository>();
      }
    });

    test('Successful responses should be parsed correctly', () async {
      /// Arrange
      final todoRepository = locator<TodoRepository>();
      const expected = [
        TodoResponse(
          uuid: '94b42705-ae6e-40fb-b20c-3231653966ca',
          description: 'Rewrite a Flutter app in native Android/iOS',
          isCompleted: false,
        ),
      ];

      /// Act
      final todosResult = await todoRepository.getTodos();

      /// Assert
      expect(todosResult.isSuccess, true);
      expect(todosResult.success!, expected);
    });
  });
}
