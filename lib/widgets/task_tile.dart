import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('task1'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
    );
  }
}
