import 'dart:convert';
import 'package:apicall/models/Userdata.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;





class ui extends StatefulWidget {

  @override
  State<ui> createState() => _uiState();
}

class _uiState extends State<ui> {

  TextEditingController _searchController = TextEditingController();

  var View = "BasicApiCall";
  double sizeBoxHeight = 15;

  var callApi = "call api";
  List<String> productlist =[];
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
                      child: CircularProgressIndicator()
                  )
              ),
              Container(
                child: TextField(
                  controller: _searchController,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(color: Colors.blue,width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(color: Colors.black, width: 5.0),
                    ),
                    hintText: 'Search',
                  ),


                  keyboardType: TextInputType.text,
                ),

              ),

                ElevatedButton(

                    onPressed: () {
                      getUserData();
                      hideProgress();

                    },
                    child: Text("Search")),

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
                      child: Text(productlist[position]));

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
    Map<String,dynamic> map = {
      "name" : _searchController.text
    };
    showProgress();
    var url = "";
    if (_searchController.text.isEmpty) {
      url = "https://blitzsen.tecocraft.net/api/products";

    }
    else{
      url = "https://blitzsen.tecocraft.net/api/products/search";

    }
      //   if(v.runtimeType == String){
      //     map['data'] = _data;
      //   }else {
      //     v.toJson();
      //   }
      // }).toList();
    var response = await http.post(Uri.parse(url),body: _searchController.text.isEmpty ? {}:map);
    hideProgress();
    debugPrint("response.body: ${response.body}");

    var data = Userdata.fromJson(jsonDecode(response.body));
    print("data 1 ----->${data.toJson()}");
    setState(() {

      productlist.clear();
      print("All Product-->${data.data}");
      print("All Product-->${data.searchDataList}");
      if(data.data!=null && data.data!.isNotEmpty) {
        data.data!.forEach((element) {
          productlist.add(element.name!);

        });
      }else{
        productlist = data.searchDataList ?? [];
      }
      print("Total Product -->> ${productlist.length}");

    });

    debugPrint("list size: ${dataList.length}");

  }
}