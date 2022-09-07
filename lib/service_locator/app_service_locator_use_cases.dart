import 'package:cat_trivia/domain/repositories/cat_facts_repository.dart';
import 'package:cat_trivia/domain/use_cases/get_cat_facts_history_use_case.dart';
import 'package:cat_trivia/domain/use_cases/get_random_cat_fact_use_case.dart';
import 'package:get_it/get_it.dart';

class AppServiceLocatorUseCases {
  static Future<void> setup({required GetIt instance}) async {
    instance.registerFactory<GetRandomCatFactUseCase>(
      () {
        return GetRandomCatFactUseCase(
          catFactsRepository: instance<CatFactsRepository>(),
        );
      },
    );
    instance.registerFactory<GetCatFactsHistoryUseCase>(
      () {
        return GetCatFactsHistoryUseCase(
          catFactsRepository: instance<CatFactsRepository>(),
        );
      },
    );
  }
}
