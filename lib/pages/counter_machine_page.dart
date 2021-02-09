import 'package:flutter/material.dart';
class CounterMachinePage extends StatefulWidget {
  @override
  _CounterMachinePageState createState() => _CounterMachinePageState();
}

class _CounterMachinePageState extends State<CounterMachinePage> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        centerTitle: true,
      ),
      body: Container(
        width: 800.0,
        color: Colors.grey,
        padding: const EdgeInsets.only(top: 150.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              value.toString(),
              style: TextStyle(fontSize: 58.0),
            ),
            RaisedButton(
                child: Text("Add"),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    value++;
                  });
                  print(value);
                }),
            RaisedButton(
                child: Text("Sub"),
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    value--;
                  });
                  print(value);
                })
          ],
        ),
      ),
    );
  }
}
