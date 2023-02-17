import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';



class firstdemonative extends StatefulWidget {

  @override
  State<firstdemonative> createState() => _firstdemonativeState();
}

class _firstdemonativeState extends State<firstdemonative> {
  static const platform = MethodChannel('samples.flutter.dev/battery');
  String _batteryLevel = 'Unknown battery level.';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () { _getBatteryLevel,
      _showToast();
      },child: const Text("Show Toast"),),
          ],
            ),


        ),
      ),
    );
  }
  Future<void> _showToast() async {
    final int showtoast = await Channel.invokeMethod(
        'Show Toast', <String, String>{
      'msg': "This is a toast from flutter to andriod native "});
  }
}
