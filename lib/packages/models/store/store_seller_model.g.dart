// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_seller_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreSellerModelAdapter extends TypeAdapter<StoreSellerModel> {
  @override
  final int typeId = 10;

  @override
  StoreSellerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreSellerModel(
      id: fields[0] as String,
      appId: fields[1] as String,
      fullname: fields[2] as String,
      telephone: fields[3] as String,
      telephoneHash: fields[4] as String?,
      email: fields[5] as String,
      emailHash: fields[6] as String?,
      password: fields[7] as String?,
      avatar: fields[8] as String?,
      country: fields[9] as String,
      isDefault: fields[10] as bool,
      description: fields[11] as String?,
      address: fields[12] as String?,
      status: fields[13] as String,
      createdAt: fields[14] as DateTime,
      updatedAt: fields[15] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, StoreSellerModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.appId)
      ..writeByte(2)
      ..write(obj.fullname)
      ..writeByte(3)
      ..write(obj.telephone)
      ..writeByte(4)
      ..write(obj.telephoneHash)
      ..writeByte(5)
      ..write(obj.email)
      ..writeByte(6)
      ..write(obj.emailHash)
      ..writeByte(7)
      ..write(obj.password)
      ..writeByte(8)
      ..write(obj.avatar)
      ..writeByte(9)
      ..write(obj.country)
      ..writeByte(10)
      ..write(obj.isDefault)
      ..writeByte(11)
      ..write(obj.description)
      ..writeByte(12)
      ..write(obj.address)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.createdAt)
      ..writeByte(15)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreSellerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
