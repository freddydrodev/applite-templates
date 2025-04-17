// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_option_value_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreOptionValueModelAdapter extends TypeAdapter<StoreOptionValueModel> {
  @override
  final int typeId = 13;

  @override
  StoreOptionValueModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreOptionValueModel(
      id: fields[0] as String,
      text: fields[1] as String,
      image: fields[2] as String?,
      sortOrder: (fields[3] as num).toInt(),
      createdAt: fields[4] as DateTime,
      updatedAt: fields[5] as DateTime,
      optionId: fields[6] as String?,
      sellerId: fields[7] as String?,
      appId: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StoreOptionValueModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.sortOrder)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.updatedAt)
      ..writeByte(6)
      ..write(obj.optionId)
      ..writeByte(7)
      ..write(obj.sellerId)
      ..writeByte(8)
      ..write(obj.appId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreOptionValueModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
