import 'package:flutter/material.dart';

class Scroll1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(3.0),
        height: 200.0,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.cyan,
                  height: 200,
                  width: 300,
                  child: Center(child: Text("1")),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.cyan,
                  height: 200,
                  width: 300,
                  child: Center(child: Text("2")),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.cyan,
                  height: 200,
                  width: 300,
                  child: Center(child: Text("3")),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.cyan,
                  height: 200,
                  width: 300,
                  child: Center(child: Text("4")),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.cyan,
                  height: 200,
                  width: 300,
                  child: Center(child: Text("5")),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.cyan,
                  height: 200,
                  width: 300,
                  child: Center(child: Text("6")),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.cyan,
                  height: 200,
                  width: 300,
                  child: Center(child: Text("7")),
                ),
              ],
            )),
      ),
    );
  }
}
