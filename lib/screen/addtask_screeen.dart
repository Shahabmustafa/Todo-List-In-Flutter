import 'package:flutter/material.dart';
import 'package:todo_list/screen/task_screen.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TaskScreen()),
                }, child:  Icon(Icons.close,
                  size: 25.0,
                ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: Text('Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400
                  ),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45.0,right: 45.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: '',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  elevation: 2,
                  padding: EdgeInsets.only(left: 150.0,right: 150.0,top: 15.0,bottom: 15.0),
                  backgroundColor: Colors.lightBlue,
                ),
                onPressed: (){}, child: Text('Add',
              style: TextStyle(
                color: Colors.white,
              ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
