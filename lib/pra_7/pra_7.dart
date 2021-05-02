import 'package:flutter/material.dart';
import 'package:practical9/pra_7/scroll.dart';
import 'package:practical9/pra_7/tabbed.dart';
import 'package:practical9/pra_7/webview.dart';

import 'card.dart';
import 'fragment.dart';
import 'grid.dart';
import 'list.dart';

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
