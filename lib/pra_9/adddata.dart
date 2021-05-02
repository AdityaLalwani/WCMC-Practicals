import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String description;

  String name;
  String mNo;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          name = value;
        });
      },
      controller: _controller1,
    );
  }

  Widget _buildMNo() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Number'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Number is Required';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          mNo = value;
        });
      },
      controller: _controller3,
    );
  }

  Widget _buildDes() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Description'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Description is Required';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          description = value;
        });
      },
      controller: _controller2,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add data")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              _buildMNo(),
              _buildName(),
              _buildDes(),
              SizedBox(height: 100),
              ElevatedButton(
                // color: Colors.lightBlue,
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    await FirebaseFirestore.instance.collection("details").add({
                      "mNo": mNo,
                      "description": description,
                      "name": name,
                    });
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
