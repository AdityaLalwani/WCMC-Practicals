import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Practical2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practical 2'),
      ),
      body: SnackBarPage(),
    );
  }
}

class SnackBarPage extends StatefulWidget {
  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();

  double n1 = 0;
  double n2 = 0;
  double sum = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 - 300,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onChanged: (value) {
                setState(() {
                  n1 = value.length > 0 ? double.parse(value) : 0;
                  sum = n1 + n2;
                });
              },
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Number 1',
                labelText: 'ENTER Number 1',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  n2 = value.length > 0 ? double.parse(value) : 0;
                  sum = n1 + n2;
                });
              },
              controller: _controller1,
              decoration: InputDecoration(
                hintText: 'Number 2',
                labelText: 'ENTER Number 2',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text(
              'Sum',
              style: TextStyle(fontSize: 25.0),
            ),
            padding: EdgeInsets.all(8.0),
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('SUM = $sum.'),
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
          ),
        ],
      ),
    );
  }
}
