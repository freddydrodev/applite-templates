// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_product_review_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreProductReviewModelAdapter
    extends TypeAdapter<StoreProductReviewModel> {
  @override
  final int typeId = 19;

  @override
  StoreProductReviewModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreProductReviewModel(
      id: fields[0] as String,
      productId: fields[1] as String,
      customerId: fields[2] as String,
      rating: (fields[3] as num).toDouble(),
      title: fields[4] as String?,
      comment: fields[5] as String?,
      images: (fields[6] as List).cast<String>(),
      isVerified: fields[7] as bool,
      createdAt: fields[8] as DateTime,
      updatedAt: fields[9] as DateTime,
      variantId: fields[10] as String?,
      sellerId: fields[11] as String,
      appId: fields[12] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StoreProductReviewModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.customerId)
      ..writeByte(3)
      ..write(obj.rating)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.comment)
      ..writeByte(6)
      ..write(obj.images)
      ..writeByte(7)
      ..write(obj.isVerified)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.variantId)
      ..writeByte(11)
      ..write(obj.sellerId)
      ..writeByte(12)
      ..write(obj.appId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreProductReviewModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
