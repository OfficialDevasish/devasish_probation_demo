import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  final String value;

  const homepage({super.key, required this.value});





  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("${widget.value}"),

      ),
      body: Center(
        child:  Text("${widget.value}"),
      ),
    );

  }
}
