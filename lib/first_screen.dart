import 'package:flutter/material.dart';
import 'package:flutter_null_safety/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'Some Text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First screen'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 24),
            ),
          ),
          RaisedButton(
              child: Text(
                'Go to second screen',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Route route = MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                );
                Navigator.push(context, route);
              })
        ],
      )),
    );
  }
}
