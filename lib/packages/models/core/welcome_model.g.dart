// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WelcomeModelAdapter extends TypeAdapter<WelcomeModel> {
  @override
  final int typeId = 7;

  @override
  WelcomeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WelcomeModel(
      id: fields[0] as String,
      fileUrl: fields[1] as String,
      fileType: fields[2] as String,
      title: fields[3] as String?,
      description: fields[4] as String?,
      appId: fields[5] as String,
      plateformType: fields[6] as String,
      createdAt: fields[7] as DateTime,
      updatedAt: fields[8] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, WelcomeModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fileUrl)
      ..writeByte(2)
      ..write(obj.fileType)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.appId)
      ..writeByte(6)
      ..write(obj.plateformType)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WelcomeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
