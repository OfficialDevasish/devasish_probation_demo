

import 'package:flutter/material.dart';

class passingdata2 extends StatefulWidget {
  final String text;

  passingdata2({Key? key, required this.text}) : super(key: key);

  @override
  State<passingdata2> createState() => _passingdata2State();
}

class _passingdata2State extends State<passingdata2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome To Second Page"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Click Here"),
        ),
        Container(
          child:Center(
            child: Text(widget.text),
          )
         ,
    ),

      ]),
    );
  }
}
