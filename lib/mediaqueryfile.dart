import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mediaqueryfile extends StatelessWidget {
  var orientation, size,height,width;


  @override
  Widget build(BuildContext context) {

    // getting the orientation of the app
    orientation = MediaQuery.of(context).orientation;

    //size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Mediaquery Demo"),
        backgroundColor: Colors.green,
      ),

      // checking the orientation
      body: orientation == Orientation.portrait?Container(
        color: Colors.blue,
        height: (MediaQuery.of(context).size.height),
        width: (MediaQuery.of(context).size.width),
      ):Container(
        height: (MediaQuery.of(context).size.height),
        width: (MediaQuery.of(context).size.width),
        color: Colors.red,
      ),
    );
  }
}
