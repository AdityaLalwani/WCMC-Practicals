import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Practical3 extends StatefulWidget {
  @override
  _Practical3State createState() => _Practical3State();
}

class _Practical3State extends State<Practical3> {
  DateTime _date1;
  DateTime _date2;
  var _diffrence;
  void _presentDataPicker1() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value != null) {
        setState(() {
          _date1 = value;
        });
      }
    });
  }

  void _presentDataPicker2() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value != null) {
        setState(() {
          _date2 = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practical 3'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _date1 == null ? '' : "${DateFormat.yMd().format(_date1)}",
                  style: TextStyle(fontSize: 16),
                ),
                RaisedButton(
                  onPressed: () => _presentDataPicker1(),
                  child: Text(
                    'Choose Date 1',
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _date2 == null ? '' : " ${DateFormat.yMd().format(_date2)}",
                  style: TextStyle(fontSize: 16),
                ),
                RaisedButton(
                  onPressed: () => _presentDataPicker2(),
                  child: Text(
                    'Choose Date 2',
                  ),
                )
              ],
            ),
            RaisedButton(
              onPressed: () {
                if (_date1.isAfter(_date2)) {
                  _diffrence = _date1.difference(_date2).inDays;
                } else {
                  _diffrence = _date2.difference(_date1).inDays;
                }
                final snackBar = SnackBar(
                  content: Text('$_diffrence Days'),
                  duration: Duration(seconds: 5),
                  action: SnackBarAction(
                    label: 'Ok',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text(
                'Calculate Difference',
                style: TextStyle(fontSize: 25.0),
              ),
              padding: EdgeInsets.all(8.0),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text(
                'Start Interval of 10s',
                style: TextStyle(fontSize: 25.0),
              ),
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text('Toast Message'),
                  duration: Duration(seconds: 5),
                  action: SnackBarAction(
                    label: 'Ok',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                Timer.periodic(Duration(seconds: 10), (timer) {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
