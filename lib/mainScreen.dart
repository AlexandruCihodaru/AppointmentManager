
import 'package:appointments_manager4_flutter/updateScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appointments_manager4_flutter/addScreen.dart';
import 'package:appointments_manager4_flutter/deleteScreen.dart';
import 'package:appointments_manager4_flutter/seeAllScreen.dart';

List AppointmentType = ["manicure", "pedicure", "haircut" , "dyeing", "hairdressing", "shaving", "massage"];

class mainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RaisedButton addButton = new RaisedButton(
        child: new Text("Add appointment"),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => addScreen()));
        });

    RaisedButton deleteButton = new RaisedButton(
        child: new Text("Delete appointment"),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => deleteScreen()));
        });

    RaisedButton updateButton = new RaisedButton(
        child: new Text("Update appointment"),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => updateScreen()));
        });

    RaisedButton showButton = new RaisedButton(
        child: new Text("Show appointments"),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => showAllScreen()));
        });

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [addButton, deleteButton, updateButton, showButton]));

    AppBar appBar = new AppBar(title: new Text("Appointments Manager"));

    Scaffold scaffold = new Scaffold(appBar: appBar, body: container);
    return scaffold;
  }
}