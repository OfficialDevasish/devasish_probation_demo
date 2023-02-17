import 'package:flutter/material.dart';

class animatedopacityfile extends StatefulWidget {


  @override
  State<animatedopacityfile> createState() => animatedopacityfileState();
}

class animatedopacityfileState extends State<animatedopacityfile> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          child: const FlutterLogo(),
        ),
        ElevatedButton(
          onPressed: _changeOpacity,
          child: const Text('Tap Me'),
        ),
      ],
    );
  }
}