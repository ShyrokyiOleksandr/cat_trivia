import 'package:cat_trivia/domain/use_cases/get_cat_facts_history_use_case.dart';
import 'package:cat_trivia/presentation/features/history/history_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final GetCatFactsHistoryUseCase _getCatFactsHistoryUseCase;

  HistoryCubit({
    required final GetCatFactsHistoryUseCase getCatFactsHistoryUseCase,
  })  : _getCatFactsHistoryUseCase = getCatFactsHistoryUseCase,
        super(HistoryState.initial()) {
    loadCatFactsHistory();
  }

  void loadCatFactsHistory() async {
    emit(state.copyWith(isLoading: true, loadingException: null));
    try {
      final catFacts = await _getCatFactsHistoryUseCase.execute();
      emit(state.copyWith(isLoading: false, catFacts: catFacts));
    } on Exception catch (exception) {
      emit(state.copyWith(isLoading: false, loadingException: exception));
    }
  }
}
