import 'package:flutter/material.dart';

class Greet extends StatefulWidget {
  @override
  _GreetState createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  TextEditingController _t1 = TextEditingController();
  TextEditingController _t2 = TextEditingController();
  _createTextField(String name, TextEditingController ctrl) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(4),
      child: TextField(
        controller: ctrl,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: 'Type $name',
            labelText: name),
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  String _message = 'Hello';
  String initCap(String str) {
    return str[0].toUpperCase() + str.substring(1).toLowerCase();
  }

  void _sayWelcome() {
    String firstName = _t1.text;
    String lastName = _t2.text;
    setState(() {
      _message = "Welcome ${initCap(firstName)} ${initCap(lastName)}";
    });

    print("Message is $_message");
  }

  @override
  Widget build(BuildContext context) {
    print("Build Called...");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 4,
        leading: Icon(Icons.dehaze, color: Colors.black, size: 30),
        title: Text('Greet App'),
        actions: <Widget>[
          Padding(
            child: Icon(Icons.home),
            padding: EdgeInsets.only(right: 10),
          ),
          Padding(
            child: Icon(Icons.cast),
            padding: EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              _createTextField('First Name', _t1),
              _createTextField('Last Name', _t2),
              SizedBox(height: 50),
              RaisedButton(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Say Welcome',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  _sayWelcome();
                },
                color: Colors.tealAccent,
              ),
              Text(
                _message,
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
