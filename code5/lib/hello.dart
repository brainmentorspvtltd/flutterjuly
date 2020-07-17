import 'package:flutter/material.dart';

class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,
        child: Center(
          child: Text(
            'Hello First Screen - 2020',
            style: TextStyle(fontSize: 43),
          ),
        ),
      ),
    );
  }
}
