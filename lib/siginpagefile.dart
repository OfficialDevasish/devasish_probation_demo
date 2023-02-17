import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devasish_probation_demo/views/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class siginpagefile extends StatefulWidget {


  @override
  State<siginpagefile> createState() => _siginpagefileState();
}

class _siginpagefileState extends State<siginpagefile> {

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginScreen"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              MyTextBox(
                controller: _name,
                ispassword: false,
                hinttext: "entre your Name",
                keyboard: TextInputType.text,
              ),
              SizedBox(height: 10,),
              Text("email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              MyTextBox(
                controller: _email,
                ispassword: false,
                hinttext: "entre your email",
                keyboard: TextInputType.text,
              ),
              SizedBox(height: 10,),
              MyPrimaryButton(
                onclick: ()async{

                  var name = _name.text.toString();
                  var email = _email.text.toString();


                  await FirebaseFirestore.instance.collection("Register").where("name",isEqualTo: name)
                      .where("email",isEqualTo: email).get().then((documents) async{
                    if(documents.size>=1)
                    {
                      print("Match");
                      var name = documents.docs.first["name"].toString();
                      var email = documents.docs.first["email"].toString();
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setString("fname", name);
                      prefs.setString("email", email);

                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>homescreen())
                      );

                    }
                    else
                    {
                      print("Not match");
                    }
                  });

                },
                buttonText: "login",
              )
            ],
          ),
        ),
      ),
    );
  }
}

MyPrimaryButton({required Future<Null> Function() onclick, required String buttonText}) {
}

MyTextBox({required TextEditingController controller, required bool ispassword, required String hinttext, required TextInputType keyboard}) {
}