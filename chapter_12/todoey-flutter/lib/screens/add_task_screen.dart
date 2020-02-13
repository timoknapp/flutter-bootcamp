import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Color primaryColor = Colors.indigo;
  String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: primaryColor,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskTitle = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
                child: Text('Add'),
                color: primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  Provider.of<TaskData>(context).addTask(taskTitle);
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
