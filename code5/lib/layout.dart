import 'package:flutter/material.dart';

class LayoutDemo extends StatefulWidget {
  @override
  _LayoutDemoState createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  _buildContainer(MaterialAccentColor color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildContainer(Colors.orangeAccent),
            _buildContainer(Colors.tealAccent),
            _buildContainer(Colors.blueAccent)
          ],
        ),
      ),
    );
  }
}
