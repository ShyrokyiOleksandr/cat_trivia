import 'package:cat_trivia/data/data_providers/local/cat_fact_local_storage.dart';
import 'package:cat_trivia/data/data_providers/remote/cat_fact/cat_fact_rest_client.dart';
import 'package:cat_trivia/data/repostiories/cat_fact_repository_impl.dart';
import 'package:cat_trivia/domain/repositories/cat_facts_repository.dart';
import 'package:get_it/get_it.dart';

class AppServiceLocatorRepositories {
  static Future<void> setup({required GetIt instance}) async {
    instance.registerLazySingleton<CatFactsRepository>(
      () {
        return CatFactRepositoryImpl(
          catFactRestClient: instance<CatFactRestClient>(),
          catFactLocalStorage: instance<CatFactLocalStorage>(),
        );
      },
    );
  }
}
