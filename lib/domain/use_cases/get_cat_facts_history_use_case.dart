import 'package:cat_trivia/domain/models/cat_fact/cat_fact.dart';
import 'package:cat_trivia/domain/repositories/cat_facts_repository.dart';

class GetCatFactsHistoryUseCase {
  final CatFactsRepository _catFactsRepository;

  GetCatFactsHistoryUseCase({
    required final CatFactsRepository catFactsRepository,
  }) : _catFactsRepository = catFactsRepository;

  Future<List<CatFact>> execute() async {
    return await _catFactsRepository.getCatFactsHistory();
  }
}
