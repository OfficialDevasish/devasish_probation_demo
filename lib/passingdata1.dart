import 'package:flutter/material.dart';
import 'package:devasish_probation_demo/passingdata2.dart';
import 'package:devasish_probation_demo/secondroute.dart';

class passingdata1 extends StatefulWidget {



  @override
  State<passingdata1> createState() => _passingdata1State();


}

class _passingdata1State extends State<passingdata1> {
  TextEditingController textFieldController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome To First Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: EdgeInsets.all(32.0),
            child: TextField(
              controller: textFieldController,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            child:  Text('Click Here'),
            onPressed: () {
              print(textFieldController.text);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => passingdata2(text:textFieldController.text,),
              ));
            },
          ),
        ],
      ),
    );
  }
}