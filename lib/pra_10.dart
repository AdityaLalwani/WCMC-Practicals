import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class WeatherHome extends StatefulWidget {
  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

@override
class _WeatherHomeState extends State<WeatherHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Practical 10"),
      ),
      body: Main(),
    );
  }
}

class Main extends StatefulWidget {
  Main({Key key}) : super(key: key);
  @override
  MainState createState() => MainState();
}

class MainState extends State<Main> {
  TextEditingController cityGrabber = new TextEditingController();
  var mainTemp;
  var city;
  // API Fetch Logic
  Future<void> getWeather() async {
    final String searchQuery = cityGrabber.text;
    final String appId = "3bd6f19941278c536b3cfefa8e784f6e";
    var response = await http.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$searchQuery&appid=$appId&units=metric');
    var data = json.decode(response.body);
    if (response.statusCode == 404) {
      cityNotFoundError(context);
    }
    if (searchQuery.isEmpty) {
      blankFieldError(context);
    }

    setState(() {
      mainTemp = data['main']['temp'];
      city = data['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Weather API",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700]),
            ),
          ),
          SizedBox(
            width: 330,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 5.0,
                      spreadRadius: 1,
                    )
                  ]),
              width: 340,
              child: TextField(
                controller: cityGrabber,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: Colors.blueAccent,
                    labelText: 'Search for a city...',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none)),
                obscureText: false,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              getWeather();
            },
            child: Text("Enter"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 10),
            child: city == null
                ? Text(
                    "Type & hit enter...",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  )
                : Text(
                    "Weather in $city is $mainTemp",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}

cityNotFoundError(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 260,
            width: 230,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "City Not Found!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Check the spelling or try a different city.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
          ),
          actionsPadding: EdgeInsets.all(10),
          contentPadding: EdgeInsets.all(10),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
      });
}

blankFieldError(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 170,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Please enter a city name!",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
          ),
          actionsPadding: EdgeInsets.all(10),
          contentPadding: EdgeInsets.all(10),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
      });
}
