import 'package:flutter_dotenv/flutter_dotenv.dart';

class Endpoints {
  Endpoints._();
  static final clientId = env["CLIENT_ID"];

  // base url
  static const String baseUrl = "https://api.github.com";

  // receiveTimeout
  static const int receiveTimeout = 5000;

  // connectTimeout
  static const int connectionTimeout = 10000;
}
