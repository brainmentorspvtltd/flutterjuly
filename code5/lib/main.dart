import 'package:flutter/material.dart';
import 'package:myfirstappdemo/imageengine.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      //home: Text('Hello Flutter'),
      //home: Greet()
      //home: TicTac()
      home: ImageEngine()
      /*home: Scaffold(
        body: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Text(
              'Hello Flutter',
              style: TextStyle(
                  fontSize: 32, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      )*/
      ));
}
