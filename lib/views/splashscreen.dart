import 'package:devasish_probation_demo/views/homescreen.dart';
import 'package:devasish_probation_demo/views/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  checklogin() async
  {
    await Future.delayed(Duration(seconds: 3),()async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if(prefs.containsKey("name"))
      {
        Navigator.of(context).pop();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>  homescreen())
        );
      }
      else
      {
        Navigator.of(context).pop();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>  loginscreen())
        );
      }
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checklogin();



  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: MediaQuery.of(context).size.height,
            child:Image.asset("assets/image1.jpeg",height: MediaQuery.of(context).size.height,)
        ),
      ),
    );
  }
}

