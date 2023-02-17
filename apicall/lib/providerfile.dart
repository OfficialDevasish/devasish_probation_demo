import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// function to trigger the app build
void main() => runApp(providerfile());

_makingPhoneCall() async {
  var url = Uri.parse("tel:9776765434");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class providerfile extends StatelessWidget {
  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Demo'),
          backgroundColor: Colors.green,
        ), // AppBar
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                ), //Container
                const Text(
                  'Welcome to Our Page!',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ), //TextStyle
                ), //Text
                Container(
                  height: 20.0,
                ),
                const Text(
                  'For further Updates',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Card(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                        hintText: 'Enter valid Phone Number'),

                  ),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: _makingPhoneCall,
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  child: const Text('Here'),
                ),

                // ElevatedButton

                // DEPRECATED
                // RaisedButton(
                // onPressed: _makingPhoneCall,
                // child: Text('Call'),
                // textColor: Colors.black,
                // padding: const EdgeInsets.all(5.0),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
