import 'package:dio/dio.dart';
import 'package:json_parsing_demo/data/data_sources/remote/clients/rest_dio_client.dart';
import 'package:json_parsing_demo/data/dto/base_response/base_response.dart';
import 'package:retrofit/retrofit.dart';

part 'todo_api.g.dart';

@RestApi(baseUrl: 'https://dev.server')
abstract class TodoApi {
  factory TodoApi(Dio dio, {String baseUrl}) = _TodoApi;

  static TodoApi getInstance([Dio? providedClient]) {
    return TodoApi(providedClient ?? RestDioClient.getBasicClient());
  }

  @GET('/todos/{uuid}')
  Future<BaseResponse> getTodo(@Path('uuid') String uuid);

  @GET('/todos')
  Future<BaseResponse> getTodos();
}
