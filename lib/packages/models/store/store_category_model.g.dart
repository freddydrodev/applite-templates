// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_category_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreCategoryModelAdapter extends TypeAdapter<StoreCategoryModel> {
  @override
  final int typeId = 11;

  @override
  StoreCategoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreCategoryModel(
      id: fields[0] as String,
      appId: fields[1] as String,
      image: fields[2] as String?,
      name: fields[3] as String,
      description: fields[4] as String?,
      slug: fields[5] as String,
      sellerId: fields[6] as String,
      parentId: fields[7] as String?,
      isActive: fields[8] as bool,
      sortOrder: (fields[9] as num).toInt(),
      createdAt: fields[10] as DateTime,
      updatedAt: fields[11] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, StoreCategoryModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.appId)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.slug)
      ..writeByte(6)
      ..write(obj.sellerId)
      ..writeByte(7)
      ..write(obj.parentId)
      ..writeByte(8)
      ..write(obj.isActive)
      ..writeByte(9)
      ..write(obj.sortOrder)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreCategoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
