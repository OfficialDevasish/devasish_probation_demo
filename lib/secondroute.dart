import 'package:flutter/material.dart';

class secondroute extends StatefulWidget {


  @override
  State<secondroute> createState() => _secondrouteState();
}

class _secondrouteState extends State<secondroute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome To Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:  Text('Go back!'),
        ),
      ),
    );
  }
}