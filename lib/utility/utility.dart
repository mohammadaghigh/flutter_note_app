import 'package:flutter_note_app/data/task_type.dart';
import 'package:flutter_note_app/data/type_num.dart';

List<TaskType> getTaskTypeList() {
  var List = [
    TaskType(
        image: 'images/meditate.png',
        title: 'تمرکز',
        taskTypeEnum: TaskTypeEnum.focus),
    TaskType(
        image: 'images/social_frends.png',
        title: 'میتینگ',
        taskTypeEnum: TaskTypeEnum.date),
    TaskType(
        image: 'images/hard_working.png',
        title: ' کار شخصی',
        taskTypeEnum: TaskTypeEnum.working),
    TaskType(
        image: 'images/banking.png',
        title: 'مالی',
        taskTypeEnum: TaskTypeEnum.banking),
    TaskType(
        image: 'images/workout.png',
        title: 'سلامتی',
        taskTypeEnum: TaskTypeEnum.workout),
    TaskType(
        image: 'images/work_meeting.png',
        title: 'قرار کاری',
        taskTypeEnum: TaskTypeEnum.meeting)
  ];

  return List;
}
