// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreProductModelAdapter extends TypeAdapter<StoreProductModel> {
  @override
  final int typeId = 17;

  @override
  StoreProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreProductModel(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String?,
      slug: fields[3] as String,
      sku: fields[4] as String?,
      appId: fields[5] as String,
      sellerId: fields[6] as String,
      badgeId: fields[7] as String?,
      categoryId: fields[8] as String,
      isActive: fields[9] as bool,
      isFeatured: fields[10] as bool,
      rating: (fields[11] as num).toDouble(),
      reviewCount: (fields[12] as num).toInt(),
      createdAt: fields[13] as DateTime,
      updatedAt: fields[14] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, StoreProductModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.slug)
      ..writeByte(4)
      ..write(obj.sku)
      ..writeByte(5)
      ..write(obj.appId)
      ..writeByte(6)
      ..write(obj.sellerId)
      ..writeByte(7)
      ..write(obj.badgeId)
      ..writeByte(8)
      ..write(obj.categoryId)
      ..writeByte(9)
      ..write(obj.isActive)
      ..writeByte(10)
      ..write(obj.isFeatured)
      ..writeByte(11)
      ..write(obj.rating)
      ..writeByte(12)
      ..write(obj.reviewCount)
      ..writeByte(13)
      ..write(obj.createdAt)
      ..writeByte(14)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
