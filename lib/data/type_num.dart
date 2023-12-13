import 'package:hive/hive.dart';
part 'type_num.g.dart';

@HiveType(typeId: 5)
enum TaskTypeEnum {
  @HiveField(0)
  working,

  @HiveField(1)
  date,

  @HiveField(2)
  focus,

  @HiveField(3)
  banking,

  @HiveField(4)
  workout,

  @HiveField(5)
  meeting,
}
