import 'package:flutter/material.dart';
import 'package:appointments_manager4_flutter/mainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    String username, password;
    TextField usernameTextField = new TextField(
      decoration: const InputDecoration(
          labelText: 'Username',
          icon: const Padding(
              padding: const EdgeInsets.only(
                  top: 15.0),
              child: const Icon(Icons.text_format)
          )
      ),
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        username = value;
      },
    );


    TextField passwordTextField = new TextField(
      decoration: const InputDecoration(
          labelText: 'Password',
          icon: const Padding(
              padding: const EdgeInsets.only(
                  top: 15.0),
              child: const Icon(Icons.lock)
          )
      ),
      obscureText: true,
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        password = value;
      },
    );

    RaisedButton logginButton = new RaisedButton(
        child: new Text("Login"),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => mainScreen()));
        });

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [usernameTextField, passwordTextField, logginButton]));

    AppBar appBar = new AppBar(title: new Text("Appointments Manager"));

    Scaffold scaffold = new Scaffold(appBar: appBar, body: container);
    return scaffold;

  }
}
