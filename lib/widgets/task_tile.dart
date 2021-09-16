import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  void checkBoxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'task1 and all other things ',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked, toggleCheckBoxState: checkBoxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final toggleCheckBoxState;
  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.redAccent,
      onChanged: toggleCheckBoxState,
    );
  }
}
