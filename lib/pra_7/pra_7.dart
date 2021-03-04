import 'package:custom_message/pra_7/card.dart';
import 'package:custom_message/pra_7/fragment.dart';
import 'package:custom_message/pra_7/grid.dart';
import 'package:custom_message/pra_7/list.dart';
import 'package:custom_message/pra_7/scroll.dart';
import 'package:custom_message/pra_7/tabbed.dart';
import 'package:custom_message/pra_7/webview.dart';
import 'package:flutter/material.dart';

class Practical7 extends StatefulWidget {
  @override
  _Practical7State createState() => _Practical7State();
}

class _Practical7State extends State<Practical7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 7"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Card1()),
              );
            },
            child: Text("Card View"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => List1()),
              );
            },
            child: Text("List View"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Grid1()),
              );
            },
            child: Text("Grid View"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Scroll1()),
              );
            },
            child: Text("Scroll View"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Text("fragment View"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tabbed1()),
              );
            },
            child: Text("Tabbed View"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WebView1()),
              );
            },
            child: Text("Web View"),
          ),
        ],
      ),
    );
  }
}
