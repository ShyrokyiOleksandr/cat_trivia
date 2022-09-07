import 'package:cat_trivia/domain/models/cat_fact/cat_fact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    required final CatFact? catFact,
    required final String? catImageUrl,
    required final bool isLoading,
    required final Exception? loadingException,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
      catFact: null,
      catImageUrl: "https://cataas.com/cat?v=",
      isLoading: false,
      loadingException: null,
    );
  }
}
