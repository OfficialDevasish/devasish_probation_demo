import 'dart:convert';

import 'package:devasish_probation_demo/views/apihomepage.dart';
import 'package:devasish_probation_demo/views/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class homescreen extends StatefulWidget {
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  String? name = "";
  var slugs = "";

  get alldata => null;

  // List<Products> alldata=[];

  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString("name");
    });

    Uri url = Uri.parse("https://fakestoreapi.com/products");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      print("");
      setState(() {
        // alldata = json.map<Products>((obj)=>products.fromJson(obj)).toList();
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome to DNA"),
        ),
        body: Column(
          children: [ListView(
        padding: const EdgeInsets.all(8),
      children: <Widget>[
        Text('List 1'),
        Text('List 2'),
        Text('List 3'),
      ],
    ),
            // Expanded(
            //   child: ListView.builder(
            //
            //     itemCount: 3,
            //     // itemCount: alldata.length,
            //     itemBuilder: (context, index) {
            //       print("CHECKING=>>>$index");
            //       print("checking2==>${alldata[index].title.toString()}");
            //
            //       return Container(
            //         child: Card(
            //           child: Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Column(
            //               children: [
            //                 Image.network(
            //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYOvXH283ZljIpg5pshP_D4xYVO-1-2xNmgQ&usqp=CAU" /*alldata[index].image*/,
            //                   width: 120.0,
            //                   height: 120.0,
            //                 ),
            //                 // Text(/*alldata[index].name.toString()*/ "Testing")
            //                 // // Text(alldata[index].slug.toString()),toString
            //                 Expanded(child: Text(alldata[index].title.toString()))
            //               ],
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.clear();

                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => apihomepage()));
                },
                child: Text("Logout"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.clear();

                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => loginscreen()));
                },
                child: Text("Login"),
              ),
            )
          ],
        ) //:Center(child: CircularProgressIndicator(),)
        );
  }
}
