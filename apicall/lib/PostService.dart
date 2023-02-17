import 'package:apicall/resources/styleresources.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class PostService extends StatefulWidget {

  @override
  State<PostService> createState() => _PostServiceState();
}

class _PostServiceState extends State<PostService> {

  TextEditingController _idController = TextEditingController();
  TextEditingController _aidController = TextEditingController();
  TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Add Product"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Id",style:styleresources.primarytext),
              SizedBox(height: 10,),
              TextField(
                controller: _idController,
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
                  hintText: 'Id',
                ),

                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10,),
              Text("Attribute Id",style:styleresources.primarytext),
              SizedBox(height: 10,),
              TextField(
                controller: _aidController,
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
                  hintText: 'Attribute id',
                ),

                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10,),
              Text("Value",style:styleresources.primarytext),
              SizedBox(height: 10,),
              TextField(
                controller: _valueController,
                decoration: InputDecoration(
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
                  hintText: 'Value',
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: ()async{

                  var id = _idController.text.toString();
                  var aid = _aidController.text.toString();
                  var value = _valueController.text.toString();
                  print("Output--->$_idController");
                  print("Output--->$_aidController");
                  print("Output--->$_valueController");



                  Uri url =Uri.parse("https://blitzsen.tecocraft.net/api/products");
                  var response = await http.post(url);
                  print("output--> ${response}");


                },

                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  margin: EdgeInsets.all(10),

                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
                    color: Colors.green,
                  ),

                  width: MediaQuery.of(context).size.width,

                  child: Text("Add",style:TextStyle(fontSize: 20,color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}