import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DeleteFromFireStore extends StatefulWidget {
  @override
  _DeleteFromFireStoreState createState() => _DeleteFromFireStoreState();
}

class _DeleteFromFireStoreState extends State<DeleteFromFireStore> {
  TextEditingController _controller = TextEditingController();
  DocumentSnapshot _currentDocument;

  _deleteData() async {
    await db.collection('details').doc(_currentDocument.id).delete();
  }

  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Delete Data from Firestore")),
      body: ListView(
        padding: EdgeInsets.all(12.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Delete Data",
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
              child: Text('Delete'),
              color: Colors.red,
              onPressed: _deleteData,
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
