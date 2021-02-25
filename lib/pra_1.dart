import 'package:flutter/material.dart';

class Practical1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 1"),
      ),
      body: Center(
          child: Text(
        'Hello World How Are You!',
        style: TextStyle(
            color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
      )),
      backgroundColor: Colors.yellow,
    );
  }
}
