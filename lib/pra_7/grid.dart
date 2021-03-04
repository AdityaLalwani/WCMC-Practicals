import 'package:flutter/material.dart';

class Grid1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(
          20,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Center(child: Text("$index")),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
