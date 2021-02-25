import 'package:flutter/material.dart';

class Practical4 extends StatefulWidget {
  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State<Practical4> {
  double f = 0.0, c = 0.0;
  var fController = TextEditingController();
  var cController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temprature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    'Celsius',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: cController,
                    decoration: InputDecoration(
                      hintText: 'Celsius',
                      labelText: 'ENTER Celsius',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        c = value.length > 0 ? double.parse(value) : 0;
                        fController.text = ((c * 1.8) + 32).toStringAsFixed(2);
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    'Fahrenheit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: fController,
                    decoration: InputDecoration(
                      hintText: 'Fahrenheit',
                      labelText: 'ENTER Fahrenheit',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        f = value.length > 0 ? double.parse(value) : 0;
                        cController.text = ((f - 32) / 1.8).toStringAsFixed(2);
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
