import 'package:cat_trivia/domain/models/cat_fact/cat_fact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  const HistoryState._();

  const factory HistoryState({
    required final List<CatFact>? catFacts,
    required final bool isLoading,
    required final Exception? loadingException,
  }) = _HistoryState;

  factory HistoryState.initial() {
    return const HistoryState(
      catFacts: null,
      isLoading: false,
      loadingException: null,
    );
  }
}
