// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_num.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskTypeEnumAdapter extends TypeAdapter<TaskTypeEnum> {
  @override
  final int typeId = 5;

  @override
  TaskTypeEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TaskTypeEnum.working;
      case 1:
        return TaskTypeEnum.date;
      case 2:
        return TaskTypeEnum.focus;
      case 3:
        return TaskTypeEnum.banking;
      case 4:
        return TaskTypeEnum.workout;
      case 5:
        return TaskTypeEnum.meeting;
      default:
        return TaskTypeEnum.working;
    }
  }

  @override
  void write(BinaryWriter writer, TaskTypeEnum obj) {
    switch (obj) {
      case TaskTypeEnum.working:
        writer.writeByte(0);
        break;
      case TaskTypeEnum.date:
        writer.writeByte(1);
        break;
      case TaskTypeEnum.focus:
        writer.writeByte(2);
        break;
      case TaskTypeEnum.banking:
        writer.writeByte(3);
        break;
      case TaskTypeEnum.workout:
        writer.writeByte(4);
        break;
      case TaskTypeEnum.meeting:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskTypeEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
