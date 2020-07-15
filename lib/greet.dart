import 'package:flutter/material.dart';

class Greet extends StatefulWidget {
  @override
  _GreetState createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  _createTextField(String name) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(4),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: 'Type $name',
            labelText: name),
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        child: Column(
          children: <Widget>[
            _createTextField('First Name'),
            _createTextField('Last Name'),
            SizedBox(height: 50),
            RaisedButton(
              padding: EdgeInsets.all(10),
              child: Text(
                'Say Welcome',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {},
              color: Colors.tealAccent,
            )
          ],
        ),
      ),
    );
  }
}
