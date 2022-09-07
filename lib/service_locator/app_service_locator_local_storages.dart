import 'package:cat_trivia/data/data_providers/local/cat_fact_local_storage.dart';
import 'package:cat_trivia/data/models/local/cat_fact_local.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import "package:path_provider/path_provider.dart" as path_provider;

class AppServiceLocatorLocalStorages {
  static Future<void> setup({required GetIt instance}) async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive
      ..init(directory.path)
      ..registerAdapter(CatFactLocalAdapter());
    instance.registerLazySingleton<CatFactLocalStorage>(
      () {
        return CatFactLocalStorage();
      },
    );
  }
}
