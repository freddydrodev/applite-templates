// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_transaction_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerTransactionModelAdapter
    extends TypeAdapter<CustomerTransactionModel> {
  @override
  final int typeId = 4;

  @override
  CustomerTransactionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomerTransactionModel(
      id: fields[0] as String,
      ref: fields[1] as String,
      appId: fields[2] as String,
      customerId: fields[3] as String,
      plateform: fields[4] as String,
      status: fields[5] as String,
      productId: fields[6] as String,
      amount: (fields[7] as num).toDouble(),
      currency: fields[8] as String,
      createdAt: fields[9] as DateTime,
      updatedAt: fields[10] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, CustomerTransactionModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.ref)
      ..writeByte(2)
      ..write(obj.appId)
      ..writeByte(3)
      ..write(obj.customerId)
      ..writeByte(4)
      ..write(obj.plateform)
      ..writeByte(5)
      ..write(obj.status)
      ..writeByte(6)
      ..write(obj.productId)
      ..writeByte(7)
      ..write(obj.amount)
      ..writeByte(8)
      ..write(obj.currency)
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
      other is CustomerTransactionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
