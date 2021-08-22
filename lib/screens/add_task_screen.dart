import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
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
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
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
