import 'package:flutter/material.dart';

class Tabbed1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Tab 1"),
                Tab(text: "Tab 2"),
                Tab(text: "Tab 3"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Tab 1")),
              Center(child: Text("Tab 2")),
              Center(child: Text("Tab 3")),
            ],
          ),
        ),
      ),
    );
  }
}
