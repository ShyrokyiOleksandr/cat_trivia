import 'package:cat_trivia/domain/models/cat_fact/cat_fact.dart';

abstract class CatFactsRepository {
  Future<CatFact> getRandomFact();

  Future<List<CatFact>> getCatFactsHistory();
}
