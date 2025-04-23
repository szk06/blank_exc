import 'package:blank_excersise/networking/http_requester.dart';

abstract class BaseService {
  final String api;

  late HttpRequester requester;

  BaseService({required this.api}) {
    requester = HttpRequester();
  }
}
