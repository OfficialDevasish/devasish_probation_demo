// import 'package:flutter/material.dart';
//
//
//
// class pulltorefresh extends StatefulWidget {
//   @override
//   _pulltorefreshState createState() => _pulltorefreshState();
// }
//
// class _pulltorefreshState extends State<pulltorefresh> {
//
//   late GlobalKey<ScaffoldState> _scaffoldKey;
//
//   // Local State to display items in listview
//   late List<String> _demoData;
//
//
//   @override
//   void initState() {
//     // initializing states
//     _demoData = [
//       "Flutter",
//       "React Native",
//       "Cordova/ PhoneGap",
//       "Native Script"
//     ];
//     _scaffoldKey = GlobalKey();
//     super.initState();
//   }
//
//   // This method will run when widget is unmounting
//   @override
//   void dispose() {
//     // disposing states
//     _scaffoldKey?.currentState?.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           title: const Text('Pull To Refresh Demo'),
//         ),
//         // Widget to show RefreshIndicator
//         body: RefreshIndicator(
//           child: ListView.builder(
//             itemBuilder: (ctx, idx) {
//               // List Item
//               return Card(
//                 child: ListTile(
//                   title: Text(_demoData[idx]),
//                 ),
//               );
//             },
//
//             // Length of the list
//             itemCount: _demoData.length,
//
//             // To make listView scrollable
//             // even if there is only a single item.
//             physics: const AlwaysScrollableScrollPhysics(),
//           ),
//           // Function that will be called when
//           // user pulls the ListView downward
//           onRefresh: () {
//             return Future.delayed(
//               Duration(seconds: 1),
//                   () {
//
//                 setState(() {
//                   _demoData.addAll(["Ionic", "Xamarin"]);
//                 });
//
//                 // showing snackbar
//                 _scaffoldKey.currentState!.showSnackBar(
//                   const SnackBar(
//                     content: Text('Page Refreshed'),
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }