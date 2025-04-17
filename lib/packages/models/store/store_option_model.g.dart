// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_option_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreOptionModelAdapter extends TypeAdapter<StoreOptionModel> {
  @override
  final int typeId = 14;

  @override
  StoreOptionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreOptionModel(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String?,
      type: fields[3] as String,
      appId: fields[4] as String,
      sellerId: fields[5] as String,
      isRequired: fields[6] as bool,
      isActive: fields[7] as bool,
      createdAt: fields[8] as DateTime,
      updatedAt: fields[9] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, StoreOptionModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.appId)
      ..writeByte(5)
      ..write(obj.sellerId)
      ..writeByte(6)
      ..write(obj.isRequired)
      ..writeByte(7)
      ..write(obj.isActive)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreOptionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
