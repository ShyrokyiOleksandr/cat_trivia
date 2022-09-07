import 'package:cat_trivia/domain/models/cat_fact/cat_fact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_fact_remote.g.dart';

@JsonSerializable(createToJson: false)
class CatFactRemote {
  @JsonKey(name: "fact")
  final String? text;

  @JsonKey(name: "updatedAt")
  final String? updatedAt;

  const CatFactRemote({
    required this.text,
    required this.updatedAt,
  });

  factory CatFactRemote.fromJson(Map<String, dynamic> json) =>
      _$CatFactRemoteFromJson(json);

  CatFact toDomain() {
    return CatFact(
      text: text ?? "",
      updatedAt: DateTime.tryParse(updatedAt ?? ""),
    );
  }
}
