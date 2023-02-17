import 'package:apicall/displayscreen.dart';
import 'package:apicall/newfile.dart';
import 'package:apicall/services/loadershowhide.dart';
import 'package:apicall/ui.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home:ui(),
    );
  }
}
