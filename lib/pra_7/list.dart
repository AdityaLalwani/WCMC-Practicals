import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                position.toString(),
                style: TextStyle(fontSize: 22.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
