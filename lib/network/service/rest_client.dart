import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

String baseUrl = dotenv.env['BASE_URL'].toString();

final String apiDomain = baseUrl;

@RestApi()
abstract class RestClient {
  factory RestClient({required Dio dio}) => _RestClient(dio);
}
