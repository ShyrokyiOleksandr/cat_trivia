import 'package:cat_trivia/data/data_providers/remote/cat_fact/cat_fact_rest_client.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class AppServiceLocatorRemoteStorages {
  static Future<void> setup({required GetIt instance}) async {
    instance.registerSingleton<Dio>(Dio());
    instance.registerLazySingleton<CatFactRestClient>(
      () {
        return CatFactRestClient(
          instance<Dio>(),
        );
      },
    );
  }
}
