import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical9/pra_9/updatedata.dart';
import 'adddata.dart';
import 'deleteData.dart';

class Practical9 extends StatefulWidget {
  @override
  _Practical9State createState() => _Practical9State();
}

class _Practical9State extends State<Practical9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crud Operations")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormScreen()));
                },
                child: Text("Add data"),
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpdateDataFromFireStore()));
                },
                child: Text("Update/View data"),
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DeleteFromFireStore()));
                },
                child: Text("Delete data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
