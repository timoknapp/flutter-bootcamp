import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksLists extends StatefulWidget {
  const TasksLists({
    Key key,
  }) : super(key: key);

  @override
  _TasksListsState createState() => _TasksListsState();
}

class _TasksListsState extends State<TasksLists> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Cheese'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          toggleCheckbox: (bool checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
    );
  }
}
