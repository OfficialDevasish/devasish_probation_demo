

import 'package:flutter/material.dart';
import 'package:devasish_probation_demo/secondroute.dart';

class navigatingfile1 extends StatefulWidget {
  const navigatingfile1({Key? key}) : super(key: key);

  @override
  State<navigatingfile1> createState() => _navigatingfile1State();
}

class _navigatingfile1State extends State<navigatingfile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome To First Page"),
      ),
      body: Center(
      child: ElevatedButton(
    child: const Text('Open route'),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  secondroute()),
    );
    },
      ),
      ),
    );
  }
}