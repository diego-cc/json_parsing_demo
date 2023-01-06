import 'package:dio/src/options.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class RetrofitUrlMatcher extends HttpRequestMatcher {
  @override
  bool matches(RequestOptions ongoingRequest, Request matcher) {
    return ongoingRequest.path.contains('/todos');
  }
}
