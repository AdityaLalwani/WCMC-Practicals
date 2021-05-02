import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UpdateDataFromFireStore extends StatefulWidget {
  @override
  _UpdateDataFromFireStoreState createState() =>
      _UpdateDataFromFireStoreState();
}

class _UpdateDataFromFireStoreState extends State<UpdateDataFromFireStore> {
  TextEditingController _controller = TextEditingController();
  DocumentSnapshot _currentDocument;

  _updateData() async {
    await db
        .collection('details')
        .doc(_currentDocument.id)
        .update({'name': _controller.text});
  }

  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Update Data from Firestore")),
      body: ListView(
        padding: EdgeInsets.all(12.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Update Data",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(hintText: 'Enter Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('Update'),
              color: Colors.red,
              onPressed: _updateData,
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "View Data",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          StreamBuilder<QuerySnapshot>(
              stream: db.collection('details').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data.docs.map((doc) {
                      return ListTile(
                        leading: Text(doc['name'] ?? 'nil'),
                        title: Text(doc['description'] ?? 'nil'),
                        subtitle: Text(doc['mNo'] ?? 'nil'),
                        trailing: RaisedButton(
                          child: Text("Edit"),
                          color: Colors.red,
                          onPressed: () async {
                            setState(() {
                              _currentDocument = doc;
                              _controller.text = doc['name'];
                            });
                          },
                        ),
                      );
                    }).toList(),
                  );
                } else {
                  return SizedBox();
                }
              }),
        ],
      ),
    );
  }
}
