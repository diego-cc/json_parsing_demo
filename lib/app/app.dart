import 'package:json_parsing_demo/data/data_sources/remote/apis/todo_api.dart';
import 'package:json_parsing_demo/data/repositories/todo_repository/todo_repository.dart';
import 'package:json_parsing_demo/data/repositories/todo_repository/todo_repository_impl.dart';
import 'package:json_parsing_demo/presentation/views/home_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    CupertinoRoute(page: HomeView, path: '/', initial: true),
  ],
  dependencies: [
    LazySingleton(
      classType: TodoApi,
      resolveUsing: TodoApi.getInstance,
    ),
    LazySingleton(
      classType: TodoRepositoryImpl,
      asType: TodoRepository,
    ),
  ],
)
class App {}
