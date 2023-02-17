import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rtlfile extends StatefulWidget {


  @override
  State<rtlfile> createState() => _rtlfileState();
}

class _rtlfileState extends State<rtlfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.only(start: 75),
        child: Container(
          color: Colors.green,
        ));
  }
}