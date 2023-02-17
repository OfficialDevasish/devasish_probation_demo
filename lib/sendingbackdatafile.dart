import 'package:devasish_probation_demo/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:devasish_probation_demo/sendingbackdatafile.dart';


class sendingbackdatafile extends StatefulWidget {
  @override
  _sendingbackdatafileState createState() {
    return _sendingbackdatafileState();
  }
}

class _sendingbackdatafileState extends State<sendingbackdatafile> {

  String text = 'Text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
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

            TextButton(
              child: Text(
                'Go to second screen',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                _awaitReturnValueFromSecondScreen(context);
              },
            )

          ],
        ),
      ),
    );
  }

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {

    // start the SecondScreen and wait for it to finish with a result
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => secondscreen(),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      text = result;
    });
  }
}

