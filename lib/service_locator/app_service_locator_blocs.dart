import 'package:cat_trivia/domain/use_cases/get_cat_facts_history_use_case.dart';
import 'package:cat_trivia/domain/use_cases/get_random_cat_fact_use_case.dart';
import 'package:cat_trivia/presentation/features/history/history_cubit.dart';
import 'package:cat_trivia/presentation/features/home/home_cubit.dart';
import 'package:get_it/get_it.dart';

class AppServiceLocatorBlocs {
  static Future<void> setup({required GetIt instance}) async {
    instance.registerFactory<HomeCubit>(
      () {
        return HomeCubit(
          getRandomCatFactUseCase: instance<GetRandomCatFactUseCase>(),
        );
      },
    );
    instance.registerFactory<HistoryCubit>(
      () {
        return HistoryCubit(
          getCatFactsHistoryUseCase: instance<GetCatFactsHistoryUseCase>(),
        );
      },
    );
  }
}
