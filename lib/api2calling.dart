import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';






class api2calling extends StatelessWidget {
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
          child: FutureBuilder<List<Productdata>>(
            future: fetchUsers(),
            builder: (context, snapshot) {

              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(snapshot.data![index].name,
                                style: const TextStyle(fontWeight: FontWeight.bold)),
                            const Divider()
                          ]
                      );
                    }
                );
              } else if (snapshot.hasError) {
                return new Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return new CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  Future<List<Productdata>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://www.tecocraft.com/eatenglish/test_category.json'));
    print(response.body);
    List responseJson = json.decode(response.body.toString());
    List<Productdata> userList = createUserList(responseJson);
    print("response-->userlist.length ${userList.length}");
    return fetchUsers();

  }

  List<Productdata> createUserList(List data){
    List<Productdata> list = [];
    for (int i = 0; i < data.length; i++) {
      String title = data[i]["login"];
      int id = data[i]["id"];
      Productdata user = new Productdata(
          name: " ",id: id);

      list.add(Productdata(name:" ", id: id) );
    }
    return list;
  }

}

class Productdata {
  String name;
  int id;
  Productdata({required this.name,required this.id});

  static fromJson(obj) {}
}
