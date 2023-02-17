
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SearchApi extends StatefulWidget {
  const SearchApi({Key? key}) : super(key: key);

  @override
  State<SearchApi> createState() => _SearchApiState();
}

class _SearchApiState extends State<SearchApi> {

  late String firstName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("tag")),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {

                    getSearchData(firstName);
                  },
                  child: Text("callApi")),
              SizedBox(height: 20,),
              TextFormField(

                decoration: InputDecoration(
                    labelText: "Strings.enterFirstName",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                validator: (value) {

                  if (value!.isEmpty) {
                    setState(() {

                    });
                  } else {
                    setState(() {

                    });
                    firstName = value.toString();
                    getSearchData(value);

                  }

                  return null;
                },
              )

              // ListView.builder(
              //     itemCount: tagsList.length,
              //     shrinkWrap: true,
              //     itemBuilder: (context, index) {
              //       return Container(
              //           margin: EdgeInsets.only(left: 10,top: 10,right: 10),
              //           child: Text("${tagsList[index].name}"));
              //     } )

            ],
          ),
        ),
      ),
    );
  }

  getSearchData(String dataN) async {

    Map<String,String> map = {"name":dataN};

    var url = "https://blitzsen.tecocraft.net/api/products/search";
    var response = await http.post(Uri.parse(url),body: map);

    debugPrint("response.body: ${response.body}");

    var data = .fromJson(jsonDecode(response.body));

    setState(() {
      // tagsList.addlist(response)
    });

  }
}


// do it