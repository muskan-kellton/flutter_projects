import 'package:flutter/material.dart';
import 'package:flutter_projects/todoey_app/models/task_data.dart';
import 'package:flutter_projects/todoey_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ListViewbuilder deals with the listview that contains large no of children
    //only for those children that are visible on the screen
    return Consumer<TaskData>(builder: (context, value, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = value.tasks[index];
          return TaskTile(
            //To use variables declared in stateful class, inside of state class we use widget.
            //taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallBack: (checkboxState) {
              value.checkTask(task);
            },
            longPressCallBack: (){
              value.deleteTask(task);
            },
          );
        },
        itemCount: value.taskCount,
      );
    });
  }
}




// ListView(
//       children: <Widget>[
//         TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
//         TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,),
//         TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,),
//       ],
//     );
