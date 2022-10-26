import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class MultipleRequestsHttpClient {
  final Client client = http.Client();
  int requestCount = 0;

  MultipleRequestsHttpClient();

  Future<Response> get(Uri url, {Map<String, String>? headers}) {
    ++requestCount;
    // print('get() requestCount $requestCount $url');
    return client.get(url, headers: headers);
  }

  void close() {
    if (requestCount == 0) return;
    --requestCount;
    // print('close() requestCount $requestCount');
    if (requestCount == 0) {
      client.close();
      // print('client connection closed');
    }
  }
}
