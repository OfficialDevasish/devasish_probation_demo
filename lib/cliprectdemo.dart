import 'package:flutter/material.dart';


class cliprectdemo extends StatefulWidget {
  @override
  _cliprectdemoState createState() => _cliprectdemoState();
}

class _cliprectdemoState extends State<cliprectdemo> {
  late double _height;
  late double _width;
  String _img = 'assets/images/just_in2.jpg';

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text('ClipRRect'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        alignment: Alignment.center,
        child: SizedBox(
            width: 320,
            height: 240,
            child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/5/5f/Alberto_conversi_profile_pic.jpg',
            width: 170,
            height: 170,
            fit: BoxFit.cover,
          ),

          ),
    ),
    );

}

}