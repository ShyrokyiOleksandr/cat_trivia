import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_fact.freezed.dart';

@freezed
class CatFact with _$CatFact {
  const CatFact._();

  const factory CatFact({
    required String text,
    required DateTime? updatedAt,
  }) = _CatFact;
}
