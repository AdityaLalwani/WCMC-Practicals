import 'package:custom_message/Pra_2.dart';
import 'package:custom_message/pra_3.dart';
import 'package:flutter/material.dart';
import 'package:custom_message/Pra_1.dart';

import 'Pra_4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WCMC Practicals"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practical1()),
                );
              },
              child: Text(
                "Practical 1",
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.grey[200],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practical2()),
                );
              },
              child: Text(
                "Practical 2",
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.grey[200],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practical3()),
                );
              },
              child: Text(
                "Practical 3",
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.grey[200],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practical4()),
                );
              },
              child: Text(
                "Practical 4",
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}
