// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_product_variant_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreProductVariantModelAdapter
    extends TypeAdapter<StoreProductVariantModel> {
  @override
  final int typeId = 18;

  @override
  StoreProductVariantModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreProductVariantModel(
      id: fields[0] as String,
      productId: fields[1] as String,
      sku: fields[2] as String?,
      price: (fields[3] as num).toDouble(),
      discountPrice: (fields[4] as num?)?.toDouble(),
      compareAtPrice: (fields[5] as num?)?.toDouble(),
      costPerItem: (fields[6] as num?)?.toDouble(),
      isDefault: fields[7] as bool,
      quantity: (fields[8] as num).toInt(),
      lowStockAlert: (fields[9] as num).toInt(),
      weight: (fields[10] as num?)?.toDouble(),
      weightUnit: fields[11] as String?,
      dimensions: (fields[12] as Map?)?.cast<String, double>(),
      infinite: fields[13] as bool,
      rating: (fields[14] as num).toDouble(),
      createdAt: fields[15] as DateTime,
      updatedAt: fields[16] as DateTime,
      sellerId: fields[17] as String,
      appId: fields[18] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StoreProductVariantModel obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.sku)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.discountPrice)
      ..writeByte(5)
      ..write(obj.compareAtPrice)
      ..writeByte(6)
      ..write(obj.costPerItem)
      ..writeByte(7)
      ..write(obj.isDefault)
      ..writeByte(8)
      ..write(obj.quantity)
      ..writeByte(9)
      ..write(obj.lowStockAlert)
      ..writeByte(10)
      ..write(obj.weight)
      ..writeByte(11)
      ..write(obj.weightUnit)
      ..writeByte(12)
      ..write(obj.dimensions)
      ..writeByte(13)
      ..write(obj.infinite)
      ..writeByte(14)
      ..write(obj.rating)
      ..writeByte(15)
      ..write(obj.createdAt)
      ..writeByte(16)
      ..write(obj.updatedAt)
      ..writeByte(17)
      ..write(obj.sellerId)
      ..writeByte(18)
      ..write(obj.appId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreProductVariantModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
