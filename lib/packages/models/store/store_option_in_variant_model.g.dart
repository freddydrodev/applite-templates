// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_option_in_variant_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreOptionInVariantModelAdapter
    extends TypeAdapter<StoreOptionInVariantModel> {
  @override
  final int typeId = 15;

  @override
  StoreOptionInVariantModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreOptionInVariantModel(
      id: fields[0] as String,
      valueId: fields[1] as String,
      variantId: fields[2] as String,
      createdAt: fields[3] as DateTime,
      updatedAt: fields[4] as DateTime,
      sellerId: fields[5] as String,
      appId: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StoreOptionInVariantModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.valueId)
      ..writeByte(2)
      ..write(obj.variantId)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.sellerId)
      ..writeByte(6)
      ..write(obj.appId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreOptionInVariantModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
