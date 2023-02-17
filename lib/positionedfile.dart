
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class positionedfile extends StatelessWidget {


  static const String _title = 'Flutter Animated Container Demo';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Positioned Demo'),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: true,
        ), //AppBar
        body: Padding(
          padding: EdgeInsets.only(top: 300),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[

              /** Positioned WIdget **/
              Positioned(
                top: 0.0,
                child: Icon(Icons.message,
                    size: 128.0, color: Colors.greenAccent[400]), //Icon
              ), //Positioned
              /** Positioned WIdget **/

              Positioned(
                top: 0,
                left:225,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Text('24'),
                ), //CircularAvatar
              ), //Positioned
            ], //<Widget>[]
          ), //Stack
        ), //Padding
      ), //Scaffold
    );
  }
}




