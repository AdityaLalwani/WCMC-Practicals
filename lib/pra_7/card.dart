import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 100,
          height: MediaQuery.of(context).size.height - 100,
          padding: EdgeInsets.all(10.0),
          child: Card(
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.red,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Center(
                      child: Text("CardView"),
                    ),
                    color: Colors.orange,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                color: Colors.yellow,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
