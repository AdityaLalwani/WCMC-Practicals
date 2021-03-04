import 'dart:io';

import 'package:flutter/material.dart';

class Practical5 extends StatefulWidget {
  @override
  Practical5State createState() => Practical5State();
}

class Practical5State extends State<Practical5> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  int count = 0;
  bool isButtonDisabled = false;
  bool success = false;
  String dispText = '';

  void validate_all(String a, String b) {
    String x = '';
    if (a.length == 0) {
      x = 'Please enter username';
    } else if (b.length == 0) {
      x = 'Please enter password';
    } else if (a == '18IT052' && b == '18IT052') {
      x = 'Login Successfull';
      success = true;
    } else if (a != '18IT052') {
      count = count + 1;
      x = 'Please enter valid username.';
      success = false;
    } else if (b != '18IT052') {
      count = count + 1;
      x = 'Please enter valid password.';
      success = false;
    }
    if (count == 3) {
      isButtonDisabled = true;
    }

    if (x == '') {
      success = true;
      x = 'Login Successful';
    }

    setState(() {
      dispText = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'User Name',
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  labelText: 'Password',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text('Login'),
                    onPressed: isButtonDisabled
                        ? null
                        : () {
                            validate_all(
                                nameController.text, passController.text);
                          },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text('Cancel'),
                    onPressed: () => exit(0),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: success
                    ? Text(dispText,
                        style: TextStyle(
                          backgroundColor: Colors.green,
                          color: Colors.white,
                          fontSize: 20.0,
                        ))
                    : Text(
                        dispText,
                        style: TextStyle(
                          backgroundColor: Colors.red,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ))
          ],
        ),
      ),
    );
  }
}
