import 'package:cat_trivia/domain/use_cases/get_random_cat_fact_use_case.dart';
import 'package:cat_trivia/presentation/features/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetRandomCatFactUseCase _getRandomCatFactUseCase;
  int updateNumber = 0;

  HomeCubit({
    required final GetRandomCatFactUseCase getRandomCatFactUseCase,
  })  : _getRandomCatFactUseCase = getRandomCatFactUseCase,
        super(HomeState.initial()) {
    loadCatFact();
  }

  void loadCatFact() async {
    emit(state.copyWith(isLoading: true, loadingException: null));
    try {
      final catFact = await _getRandomCatFactUseCase.execute();
      emit(
        state.copyWith(
            isLoading: false,
            catFact: catFact,
            catImageUrl: "${state.catImageUrl}${updateNumber++}"),
      );
    } on Exception catch (exception) {
      emit(state.copyWith(isLoading: false, loadingException: exception));
    }
  }
}
