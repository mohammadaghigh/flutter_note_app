import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_note_app/screens/add_task_screen.dart';
import 'package:flutter_note_app/widgets/get_task_list.dart';
// import 'package:flutter_note_app/widgets/task_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../data/task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String inputText = '';

  var controller = TextEditingController();

  var taskBox = Hive.box<Task>('taskBox');

  bool isChecked = false;
  bool isFabVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: taskBox.listenable(),
          builder: ((context, value, child) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notif) {
                setState(()  {
                  if (notif.direction == ScrollDirection.forward) {
                    isFabVisible = true;
                  }
                  if (notif.direction == ScrollDirection.reverse) {
                    isFabVisible = false;
                  }
                });
                return true;
              },
              child: taskBox.values.isNotEmpty
                  ? GetTaskList()
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '!هورااااااا ',
                            style: TextStyle(
                                fontSize: 34.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'تسکی برای انجام نداری',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
            );
          }),
        ),
      ),
      floatingActionButton: Visibility(
        visible: isFabVisible,
        child: FloatingActionButton(
            backgroundColor: Color(0xff18DAA3),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddTaskScreen(),
                ),
              );
            },
            child: Image.asset('images/icon_add.png')),
      ),
    );
  }
}
