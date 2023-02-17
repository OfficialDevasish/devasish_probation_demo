import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  //channel name, used in android code to invoke method
  static const Channel = MethodChannel('com.example.batterylevel../channelName');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Call Native Code to show Toast Message"),
            ElevatedButton(onPressed: (){
              _showToast();
            },child: Text("Show Toast"),),
          ],
        ),
      ),
    );
  }
  //a method that invoke native code
  Future<void> _showToast() async{
    final int batteryLevel = await Channel.invokeMethod('showToast',<String,String>{
      'message':'This is a Toast from From Flutter to Android Native Code Yes, It is working'
    });


    print(batteryLevel);
  }
}