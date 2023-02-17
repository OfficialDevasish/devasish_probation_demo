import 'dart:convert';

import 'package:flutter/material.dart';


class apicall extends StatefulWidget {


  @override
  State<apicall> createState() => _apicallState();
}

class _apicallState extends State<apicall> {


  //
  // getApidData() async{
  //   var url = Uri.parse('https://www.tecocraft.co/eatenglish/test_category.json');
  //    http.Response respons = await http.get(url);
  //    print(respons.statusCode);
  //   if (respons.statusCode==200) {
  //     print('Sucess');
  //    final data = jsonDecode(respons.body);
  //    final text = data[0]['text'];
  //    print('text');
  //   } else {
  //     print('failed');
  //   }
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("API Calling HomePage"),
      ),
      body:Center (
       child: TextButton
         (  onPressed:(

           )
       {


       },
       child: Text('Api Call'),
       )
      ),
    );

  }
}
