import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_checkbox.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Buy Milk",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        checkboxCallback: (bool checkboxState) {
          print(checkboxState);
          setState(() {
            isChecked = checkboxState;
          });
        },
      ),
    );
  }
}
