// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_product_image_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StockProductImageModelAdapter
    extends TypeAdapter<StockProductImageModel> {
  @override
  final int typeId = 16;

  @override
  StockProductImageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StockProductImageModel(
      id: fields[0] as String,
      url: fields[1] as String,
      providerId: fields[2] as String?,
      variantId: fields[3] as String,
      sellerId: fields[4] as String,
      appId: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StockProductImageModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.providerId)
      ..writeByte(3)
      ..write(obj.variantId)
      ..writeByte(4)
      ..write(obj.sellerId)
      ..writeByte(5)
      ..write(obj.appId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockProductImageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
