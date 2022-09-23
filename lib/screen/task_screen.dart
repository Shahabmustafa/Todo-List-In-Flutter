import 'package:flutter/material.dart';
import 'package:todo_list/screen/addtask_screeen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  Widget builderButtonSheet(BuildContext context) => AddTaskScreen();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (BuildContext context) => AddTaskScreen());
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 30.0,
                    ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.w700,
                ),),
                Text('12 Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: 0.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                // child: TaskList(),
                ),
          ),
        ],
      ),
    );
  }
}

