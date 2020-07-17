import 'package:flutter/material.dart';

class TicTac extends StatefulWidget {
  @override
  _TicTacState createState() => _TicTacState();
}

class _TicTacState extends State<TicTac> {
  _createRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[_createButton(), _createButton(), _createButton()],
    );
  }

  _createButton() {
    return Container(
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.tealAccent,
        child: Text('  '),
        onPressed: () {},
      ),
    );
  }

  _createTitle() {
    return Text(
      'TicTacToe',
      style: TextStyle(fontSize: 32),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _createTitle(),
              SizedBox(height: 30),
              _createRow(),
              _createRow(),
              _createRow()
            ],
          ),
        ),
      ),
    );
  }
}
