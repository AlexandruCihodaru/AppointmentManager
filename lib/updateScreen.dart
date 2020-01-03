
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class updateScreen extends StatelessWidget{

  String _selectedType;

  void updateAppointment(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("updateing app"),
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
    String clientName, type, date, hour;

    TextField clientTextField = new TextField(
      decoration: const InputDecoration(
          labelText: 'Client Name:',
          icon: const Padding(
              padding: const EdgeInsets.only(
                  top: 15.0),
              child: const Icon(Icons.text_format)
          )
      ),
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        clientName = value;
      },
    );

    TextField typeField = new TextField(
      decoration: const InputDecoration(
          labelText: 'Type:',
          icon: const Padding(
              padding: const EdgeInsets.only(
                  top: 15.0),
              child: const Icon(Icons.text_format)
          )
      ),
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        type = value;
      },
    );

    TextField dateField = new TextField(
      decoration: const InputDecoration(
          labelText: 'Type:',
          icon: const Padding(
              padding: const EdgeInsets.only(
                  top: 15.0),
              child: const Icon(Icons.text_format)
          )
      ),
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        date = value;
      },
    );

    TextField hourField = new TextField(
      decoration: const InputDecoration(
          labelText: 'Type:',
          icon: const Padding(
              padding: const EdgeInsets.only(
                  top: 15.0),
              child: const Icon(Icons.text_format)
          )
      ),
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        hour = value;
      },
    );


    RaisedButton updateButton = new RaisedButton(
        child: new Text("update appointment"),
        onPressed: () {
          updateAppointment(context);
        });

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [clientTextField, typeField, dateField, hourField, updateButton]));

    AppBar appBar = new AppBar(title: new Text("Appointments Manager"));

    Scaffold scaffold = new Scaffold(appBar: appBar, body: container);
    return scaffold;
  }
}