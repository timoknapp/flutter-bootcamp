import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            toggleCheckbox: (bool checkboxState) {
              taskData.toggleDone(index);
            },
          );
        },
        itemCount: taskData.taskCount,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      );
    });
  }
}
