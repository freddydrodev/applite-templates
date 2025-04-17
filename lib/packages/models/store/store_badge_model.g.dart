// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_badge_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreBadgeModelAdapter extends TypeAdapter<StoreBadgeModel> {
  @override
  final int typeId = 12;

  @override
  StoreBadgeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreBadgeModel(
      id: fields[0] as String,
      image: fields[1] as String?,
      name: fields[2] as String,
      description: fields[3] as String?,
      slug: fields[4] as String,
      color: fields[5] as String?,
      appId: fields[6] as String,
      sellerId: fields[7] as String,
      isActive: fields[8] as bool,
      createdAt: fields[9] as DateTime,
      updatedAt: fields[10] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, StoreBadgeModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.slug)
      ..writeByte(5)
      ..write(obj.color)
      ..writeByte(6)
      ..write(obj.appId)
      ..writeByte(7)
      ..write(obj.sellerId)
      ..writeByte(8)
      ..write(obj.isActive)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreBadgeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
