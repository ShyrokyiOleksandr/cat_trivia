// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_local.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatFactLocalAdapter extends TypeAdapter<CatFactLocal> {
  @override
  final int typeId = 1;

  @override
  CatFactLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatFactLocal(
      text: fields[0] as String,
      updatedAt: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, CatFactLocal obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatFactLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
