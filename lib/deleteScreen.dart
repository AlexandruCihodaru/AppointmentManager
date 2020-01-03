import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class deleteScreen extends StatelessWidget{

  String _selectedType = "";

  void deleteAppointment(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Deleting app"),
          content: new Text("Not implemented yet"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String clientId;

    TextField clientTextField = new TextField(
      decoration: const InputDecoration(
          labelText: 'Client Id:',
          icon: const Padding(
              padding: const EdgeInsets.only(
                  top: 15.0),
              child: const Icon(Icons.text_format)
          )
      ),
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        clientId = value;
      },
    );


    RaisedButton deleteButton = new RaisedButton(
        child: new Text("Login"),
        onPressed: () {
          deleteAppointment(context);
        });

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [clientTextField,deleteButton]));

    AppBar appBar = new AppBar(title: new Text("Appointments Manager"));

    Scaffold scaffold = new Scaffold(appBar: appBar, body: container);
    return scaffold;
  }
}