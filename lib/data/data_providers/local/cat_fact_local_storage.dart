import 'package:cat_trivia/data/models/local/cat_fact_local.dart';
import 'package:cat_trivia/domain/models/cat_fact/cat_fact.dart';
import 'package:hive/hive.dart';

class CatFactLocalStorage {
  late Box _box;
  static const String _boxName = 'facts';

  CatFactLocalStorage() {
    Hive.openBox<CatFactLocal>(_boxName).then((value) => _box = value);
  }

  Future<List<CatFactLocal>> getAllFactsFromLocal() async {
    return _box.values.toList().cast<CatFactLocal>();
  }

  void addFactsToLocal(CatFact catModel) async {
    await _box
        .add(CatFactLocal(text: catModel.text, updatedAt: DateTime.now()));
  }
}
