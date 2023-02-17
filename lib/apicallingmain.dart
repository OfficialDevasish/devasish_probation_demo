import 'dart:convert';

import 'package:devasish_probation_demo/models/productdata.dart';
import 'package:flutter/material.dart';



class apicallingmain extends StatelessWidget {
  // final Productdetails _productdetails;
  //  final users = Productdetails(name: name, id: id);


  //declare the same  down from json method

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Fetch Data Example'),
        ),
        body: Container(

        ),
      ),
    );
  }

  Future<Productdata> fetchPost() async {
    var url = "https://www.tecocraft.com/eatenglish/test_category.json";
    var http;
    final response = await http.get(Uri.parse(url));
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      // If the call to the server was successful (returns OK), parse the JSON.
      return Productdata.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful (response was unexpected), it throw an error.
      throw Exception('Failed to load post');
    }
  }
}
