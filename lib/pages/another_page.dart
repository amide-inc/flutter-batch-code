import 'package:flutter/material.dart';
class AnotherPage extends StatefulWidget {
  final String message;
  AnotherPage({this.message});
  @override
  _AnotherPageState createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(widget.message  ?? " null value comes"),
      )
    );
  }
}