import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addCallback;

  AddTaskScreen({this.addCallback});

  @override
  Widget build(BuildContext context) {
    String newTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                newTitle = newValue;
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  letterSpacing: 0.5,
                ),
              ),
              onPressed: () {
                addCallback(newTitle);
              },
            )
          ],
        ),
      ),
    );
  }
}
