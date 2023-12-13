import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/task.dart';
import 'package:flutter_note_app/widgets/task_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';

class GetTaskList extends StatefulWidget {
  const GetTaskList({super.key});

  @override
  State<GetTaskList> createState() => _GetTaskListState();
}

class _GetTaskListState extends State<GetTaskList> {
  var taskBox = Hive.box<Task>('taskBox');
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskBox.values.length,
      itemBuilder: (context, index) {
        var task = taskBox.values.toList()[index];
        return _getListItem(task);
      },
    );
  }

  Widget _getListItem(Task task) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.redAccent,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 32.0,
        ),
      ),
      confirmDismiss: (direction) {
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Center(
                  child: Text(
                    'پاکش کنم ؟',
                    textDirection: TextDirection.rtl,
                  ),
                ),
                content: Text(
                  'آیا مطمئنی که میخوای پاکش کنی؟',
                  textDirection: TextDirection.rtl,
                ),
                actions: [
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text(
                        'خیر',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {
                        task.delete();
                        Navigator.of(context).pop(true);
                      },
                      child: Text(
                        'بله',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      )),
                ],
              );
            });
      },
      onDismissed: (direction) {
        task.delete();
      },
      child: TaskWidget(task: task),
    );
  }
}
