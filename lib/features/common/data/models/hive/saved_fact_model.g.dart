// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_fact_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavedFactModelAdapter extends TypeAdapter<SavedFactModel> {
  @override
  final int typeId = 0;

  @override
  SavedFactModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavedFactModel(
      factText: fields[0] as String,
      factDate: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SavedFactModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.factText)
      ..writeByte(1)
      ..write(obj.factDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavedFactModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
