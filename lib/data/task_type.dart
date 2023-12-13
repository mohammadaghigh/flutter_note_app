import 'package:flutter_note_app/data/type_num.dart';
import 'package:hive/hive.dart';

part 'task_type.g.dart';

@HiveType(typeId: 4)
class TaskType {
  @HiveField(0)
  String image;

  @HiveField(1)
  String title;

  @HiveField(2)
  TaskTypeEnum taskTypeEnum;

  TaskType(
      {required this.image, required this.title, required this.taskTypeEnum});
}
