import 'package:cat_trivia/data/data_providers/local/cat_fact_local_storage.dart';
import 'package:cat_trivia/data/data_providers/remote/cat_fact/cat_fact_rest_client.dart';
import 'package:cat_trivia/domain/exceptions/unexpected_excetion.dart';
import 'package:cat_trivia/domain/models/cat_fact/cat_fact.dart';
import 'package:cat_trivia/domain/repositories/cat_facts_repository.dart';

class CatFactRepositoryImpl extends CatFactsRepository {
  final CatFactRestClient _catFactRestClient;
  final CatFactLocalStorage _catFactLocalStorage;

  CatFactRepositoryImpl({
    required final CatFactRestClient catFactRestClient,
    required final CatFactLocalStorage catFactLocalStorage,
  })  : _catFactRestClient = catFactRestClient,
        _catFactLocalStorage = catFactLocalStorage;

  @override
  Future<CatFact> getRandomFact() async {
    try {
      final response = await _catFactRestClient.getCatFactRemote();
      _catFactLocalStorage.addFactsToLocal(response.toDomain());
      return response.toDomain();
    } on Exception catch (exception) {
      throw UnexpectedException(message: exception.toString());
    }
  }

  @override
  Future<List<CatFact>> getCatFactsHistory() async {
    try {
      final facts = await _catFactLocalStorage.getAllFactsFromLocal();
      return facts.map((e) => e.toDomain()).toList();
    } on Exception catch (exception) {
      throw UnexpectedException(message: exception.toString());
    }
  }
}
