import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/task_type.dart';

class TaskTypeItemList extends StatelessWidget {
  TaskTypeItemList({
    super.key,
    required this.taskType,
    required this.index,
    required this.selectedItemList,
  });

  TaskType taskType;
  int index;
  int selectedItemList;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (selectedItemList == index) ? Color(0xff18DAA3) : Colors.white,
        border: Border.all(
          color: (selectedItemList == index) ? Colors.green : Colors.grey,
          width: (selectedItemList == index) ? 3 : 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      margin: EdgeInsets.all(8),
      width: 100,
      child: Column(
        children: [
          Image.asset(taskType.image),
          Text(
            taskType.title,
            style: TextStyle(
                color:
                    (selectedItemList == index) ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}
