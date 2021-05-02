import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:practical9/pra_1.dart';
import 'package:practical9/pra_10.dart';
import 'package:practical9/pra_3.dart';
import 'package:practical9/pra_4.dart';
import 'package:practical9/pra_5.dart';
import 'package:practical9/pra_6.dart';
import 'package:practical9/pra_7/pra_7.dart';
import 'package:practical9/pra_8.dart';
import 'package:practical9/pra_9/pra_9.dart';
import 'Pra_2.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

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
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practical5()),
                );
              },
              child: Text(
                "Practical 5",
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
                  MaterialPageRoute(builder: (context) => Practical6()),
                );
              },
              child: Text(
                "Practical 6",
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
                  MaterialPageRoute(builder: (context) => Practical7()),
                );
              },
              child: Text(
                "Practical 7",
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
                  MaterialPageRoute(builder: (context) => Practical8()),
                );
              },
              child: Text(
                "Practical 8",
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
                  MaterialPageRoute(builder: (context) => Practical9()),
                );
              },
              child: Text(
                "Practical 9",
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
                  MaterialPageRoute(builder: (context) => WeatherHome()),
                );
              },
              child: Text(
                "Practical 10",
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
