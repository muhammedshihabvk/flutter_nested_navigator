import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test page"),),
      body: Column(children: [
        Text("TestPage"),
        FlatButton(onPressed: () {
          Navigator.pop(context);
        }, child: null)
      ]),
    );
  }
}
