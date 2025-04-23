import 'package:dio/dio.dart';

class APIError implements Exception {
  final String message;
  final String userMessage;

  APIError(
      {this.message = "An error has occurred please try again later",
        this.userMessage="An error has occurred please try again later",});

  @override
  String toString() {
    return 'CustomException: $message';
  }

  factory APIError.fromDioError(DioException e, {dynamic trace}) {
    print("API Error Trace: $trace");
    print("Response code: ${e.response?.statusCode ?? 'no code'}");
    if (e.response != null && e.response!.data != null) {
      print("responseErrorData: ${e.response!.data}");
      return APIError(
        message: e.response!.data['message'] ?? "An error has occurred, please try again later",
        userMessage: e.response!.data['user_message'] ?? "An error has occurred, please try again later",
      );
    } else {
      return APIError();
    }
  }
}
