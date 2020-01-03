import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class showAllScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    TextField notDoneYet = new TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Not done yet!'
      ),
    );

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [notDoneYet]));

    AppBar appBar = new AppBar(title: new Text("Appointments Manager"));

    Scaffold scaffold = new Scaffold(appBar: appBar, body: container);
    return scaffold;
  }
}