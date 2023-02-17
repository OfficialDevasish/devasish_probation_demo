import 'dart:convert';
import 'package:apicall/models/Userdata.dart';
import 'package:apicall/services/loadershowhide.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;





class displayscreen extends StatefulWidget {
  const displayscreen({Key? key}) : super(key: key);

  @override
  State<displayscreen> createState() => _displayscreenState();
}

class _displayscreenState extends State<displayscreen> {

  var View = "BasicApiCall";
  double sizeBoxHeight = 15;

  var callApi = "call api";
  List<Data> productlist =[];
  List<Userdata> dataList = [];
  // List<Links> tagsList = [];
  List<Data> tagsList = [];

  bool visible = true ;

  hideProgress(){

    if(visible == true){
      setState(() {
        visible = false;
      });
    }


  }
  showProgress(){

    if(visible == false){
      setState(() {
        visible = true;
      });
    }


  }

  @override
  void initState() {

    getUserData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(View)),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [

              Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: visible,
                  child: Container(
                      margin: EdgeInsets.only(top: 50, bottom: 30),
                      child: CircularProgressIndicator()
                  )
              ),

              // ElevatedButton(
              //
              //     onPressed: () {
              //       getUserData();
              //       hideProgress();
              //
              //     },
              //     child: Text(callApi)),
              ListView.builder(
                itemCount: productlist.length,
                shrinkWrap: true,
                itemBuilder: (context, position) {
                  return Container(
                    // margin: EdgeInsets.only(left: 10,top: 10,right: 10),
                      child: Text("${productlist[position].name}"));

                },),



              // ListView.builder(
              //   itemCount: productlist.length,
              //   shrinkWrap: true,
              //   itemBuilder: (context, index) {
              //     return Container(
              //         margin: EdgeInsets.only(left: 10,top: 10,right: 10),
              //         child: Text("${productlist[index].name}"));
              //
              //   },)

            ],
          ),
        ),
      ),
    );
  }

  getUserData() async {
    showProgress();
    var url = "https://blitzsen.tecocraft.net/api/products";
    var response = await http.post(Uri.parse(url));
    hideProgress();
    debugPrint("response.body: ${response.body}");

    var data = Userdata.fromJson(jsonDecode(response.body));
    print("data----->${data.toJson()}");
    setState(() {

      productlist.clear();
      productlist.addAll(data!.data!);
      print("Total Product -->> ${productlist.length}");

    });

    debugPrint("list size: ${dataList.length}");

  }
}

