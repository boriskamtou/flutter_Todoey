import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function onLongPressF;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallBack, this.onLongPressF});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressF,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          decorationColor: Colors.lightBlueAccent,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
