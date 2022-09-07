import 'package:cat_trivia/domain/models/cat_fact/cat_fact.dart';
import 'package:hive/hive.dart';

part 'cat_fact_local.g.dart';

@HiveType(typeId: 1)
class CatFactLocal extends HiveObject {
  @HiveField(0)
  String text;

  @HiveField(1)
  DateTime updatedAt;

  CatFactLocal({
    required this.text,
    required this.updatedAt,
  });

  CatFact toDomain() {
    return CatFact(
      text: text,
      updatedAt: updatedAt,
    );
  }
}
