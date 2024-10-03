// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClientTasksModelAdapter extends TypeAdapter<ClientTasksModel> {
  @override
  final int typeId = 1;

  @override
  ClientTasksModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClientTasksModel(
      tasks: fields[0] as String,
      description: fields[1] as String,
      taskDate: fields[2] as DateTime?,
      priority: fields[4] as String, 
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ClientTasksModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.tasks)
      ..writeByte(1)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientTasksModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
