import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/models/tasks_data.dart';

String newTaskTitle;

class AddNewTask extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xff757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(
              top: 30.0,
              left: 30.0,
              right: 30.0,
              bottom: MediaQuery.of(context).viewInsets.bottom + 60,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'Add task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.lightBlueAccent,
                  textAlign: TextAlign.center,
                  autofocus: true,
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  color: Colors.lightBlueAccent,
                  child: FlatButton(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {
                      Provider.of<TasksData>(context).addNewTasks(newTaskTitle);
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
