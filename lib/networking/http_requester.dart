import 'package:blank_excersise/config/api_config.dart';
import 'package:blank_excersise/networking/api_error.dart';
import 'package:dio/dio.dart';


class HttpRequester<T> {
  late Dio dio;


  HttpRequester() {
    dio = Dio();
    String timeZone = DateTime.now().timeZoneName.toString();
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Time-Zone'] = timeZone;
  }

  Future<dynamic>? get({required String path, Map<String, dynamic>? params}) {
    // String url = AppConfig.apiUrl + path;
    String url = APIConfig.apiBaseUrl + path;
    print("SENT GET: $url");
    if(params!=null){
      print("params: $params");
    }

    return dio.get(url, queryParameters: params).then((response) {
      print("Response GET: $url");
      print("Response Body: $response");
      return response.data;
    }).catchError((e, trace) {
      throw APIError.fromDioError(e, trace: trace);
    });
  }

  Future<dynamic>? delete(
      {required String path, Map<String, dynamic>? params}) {

    String url = APIConfig.apiBaseUrl + path;
    print("SENT DELETE: $url");
    if(params!=null){
      print("DELETE params: $params");
    }
    return dio.delete(url, queryParameters: params).then((response) {
      print("Response DELETE: $url");
      print("Response Body: $response");
      return response.data;
    }).catchError((e, trace) {
      throw APIError.fromDioError(e, trace: trace);
    });
  }

  Future<dynamic>? post(
      {required String path,
        Map<String, dynamic>? body,
        Map<String, dynamic>? params}) {
    String url = APIConfig.apiBaseUrl + path;
    print("SENT POST: $url");
    print("Body: $body");
    if(params!=null){
      print("params: $params");
    }

    return dio.post(url, data: body, queryParameters: params).then((response) {
      print("Response POST: $url");
      print("Response Body: $response");
      return response.data;
    }).catchError((e, trace) {
      throw APIError.fromDioError(e, trace: trace);
    });
  }

  Future<dynamic>? put(
      {required String path,
        Map<String, dynamic>? body,
        Map<String, dynamic>? params}) {
    String url = APIConfig.apiBaseUrl + path;
    print("SENT PUT: $url");
    print("Body: $body");
    return dio.put(url, data: body, queryParameters: params).then((response) {
      print("Response PUT: $url");
      print("Response Body: $response");
      return response.data;
    }).catchError((e, trace) {
      throw APIError.fromDioError(e, trace: trace);
    });
  }

  Future<dynamic>? patch(
      {required String path,
        Map<String, dynamic>? body,
        Map<String, dynamic>? params}) {
    String url = APIConfig.apiBaseUrl + path;
    print("SENT PATCH: $url");

    print("Body: $body");
    if(params!=null){
      print("params: $params");
    }
    return dio.patch(url, data: body, queryParameters: params).then((response) {
      print("Response PATCH: $url");
      print("Response Body: $response");
      return response.data;
    }).catchError((e, trace) {
      throw APIError.fromDioError(e, trace: trace);
    });
  }

}
