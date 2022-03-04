import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  
  //final bool isChecked = false;
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallBack;
  final VoidCallback longPressCallBack;

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallBack, required this.longPressCallBack});  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: checkboxCallBack,
      
    ),
    );
  }
}

// (bool? newValue) {
//             setState(() {
//               isChecked = newValue != null ? newValue : false;
//             });
//           }


