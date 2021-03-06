// ignore_for_file: unnecessary_null_comparison
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

// ignore: must_be_immutable
class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                // if (newTaskTitle != null) {
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                // } 
                // else
                //   Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
