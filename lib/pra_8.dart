import 'package:flutter/material.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class Practical8 extends StatefulWidget {
  final drawerItems = [
    DrawerItem("Home", Icons.home),
    DrawerItem("Profile", Icons.person),
    DrawerItem("Notifications", Icons.notifications)
  ];

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<Practical8> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Center(child: Text("Home"));
      case 1:
        return Center(child: Text("Profile"));
      case 2:
        return Center(child: Text("Notifications"));

      default:
        return Center(child: Text("Error"));
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(ListTile(
        leading: Icon(d.icon),
        title: Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // here we display
          title: Text(widget.drawerItems[_selectedDrawerIndex].title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Column(children: drawerOptions),
            ],
          ),
        ),
        body: _getDrawerItemWidget(_selectedDrawerIndex),
      ),
    );
  }
}
