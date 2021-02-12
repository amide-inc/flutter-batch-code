import 'package:first_app/pages/another_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
            child: Text("go to another"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AnotherPage()));
            }),
      ),
    );
  }
}
