import 'package:cat_trivia/data/models/remote/cat_fact/cat_fact_remote.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'cat_fact_rest_client.g.dart';

@RestApi(baseUrl: "https://catfact.ninja/")
abstract class CatFactRestClient {
  factory CatFactRestClient(Dio dio, {String baseUrl}) = _CatFactRestClient;

  @GET("/fact")
  Future<CatFactRemote> getCatFactRemote();
}
