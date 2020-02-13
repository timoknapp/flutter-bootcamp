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
          final task = taskData.tasks[index];
          return TaskTile(
            isChecked: task.isDone,
            taskTitle: task.name,
            toggleCheckbox: (bool checkboxState) {
              taskData.updateTask(task);
            },
            deleteTask: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      );
    });
  }
}
