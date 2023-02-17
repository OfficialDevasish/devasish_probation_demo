// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appName = 'GeeksForGeeks';
//
//     return MaterialApp(
//       title: appName,
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primaryColor: Colors.green,
//         accentColor: Colors.deepOrangeAccent,
//         fontFamily: 'Georgia',
//
//         //text styling
//         textTheme: TextTheme(
//           headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//           headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//           bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//         ),
//       ),
//       home: MyHomePage(
//         title: appName, key: ,
//       ),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   final String title;
//
//   MyHomePage({required Key key, required this.title}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Container(
//           color: Theme.of(context).accentColor,
//           child: Text(
//             'Hello Geeks!',
//             style: Theme.of(context).textTheme.headline6,
//           ),
//         ),
//       ),
//       floatingActionButton: Theme(
//         data: Theme.of(context).copyWith(
//           colorScheme:
//           Theme.of(context).colorScheme.copyWith(secondary: Colors.red),
//         ),
//         child: FloatingActionButton(
//           onPressed: null,
//           child: Icon(Icons.arrow_circle_up),
//         ),
//       ),
//     );
//   }
// }
