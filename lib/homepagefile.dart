import 'package:devasish_probation_demo/googleauthenticationfile.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:shared_preferences/shared_preferences.dart';


class homepagefile extends StatefulWidget {


  @override
  State<homepagefile> createState() => _homepagefileState();
}

class _homepagefileState extends State<homepagefile> {

  GoogleSignIn _googleSignIn = GoogleSignIn();
  var name="",email="",id="";

  getdata()async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString("fullname").toString();
      email = prefs.getString("email").toString();
      id = prefs.getString("id").toString();
    });
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
        title: Text("HomePage"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Name : "+name),
            Text("Email : "+email),
            Text("Google Id : "+id),
            ElevatedButton(
              onPressed: ()async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.clear();

                _googleSignIn.signOut();
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>googleauthenticationfile())
                );
              },
              child: Text("Logout"),
            )
          ],
        ),
      ),

    );
  }
}