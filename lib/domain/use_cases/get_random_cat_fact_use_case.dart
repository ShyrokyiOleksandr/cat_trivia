import 'package:cat_trivia/domain/models/cat_fact/cat_fact.dart';
import 'package:cat_trivia/domain/repositories/cat_facts_repository.dart';

class GetRandomCatFactUseCase {
  final CatFactsRepository _catFactsRepository;

  GetRandomCatFactUseCase({
    required final CatFactsRepository catFactsRepository,
  }) : _catFactsRepository = catFactsRepository;

  Future<CatFact> execute() async {
    return await _catFactsRepository.getRandomFact();
  }
}
