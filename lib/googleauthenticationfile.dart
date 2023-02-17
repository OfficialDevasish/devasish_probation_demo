import 'package:devasish_probation_demo/views/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';


class googleauthenticationfile extends StatefulWidget {

  @override
  State<googleauthenticationfile> createState() => _googleauthenticationfileState();
}

class _googleauthenticationfileState extends State<googleauthenticationfile> {

  FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn();


  checklogin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("fullname"))
    {
      Navigator.of(context).pop();
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>homepage())
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checklogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async{
            googleLogin();
            //
            // GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
            // GoogleSignInAuthentication googleSignInAuthentication =
            // await googleSignInAccount!.authentication;
            // AuthCredential credential = GoogleAuthProvider.credential(
            //   accessToken: googleSignInAuthentication.accessToken,
            //   idToken: googleSignInAuthentication.idToken,
            // );
            // UserCredential authResult = await _auth.signInWithCredential(credential);
            // User _user = authResult.user!;
            //
            // var name = _user.displayName.toString();
            // var email = _user.email.toString();
            // var googleid = _user.uid.toString();
            //
            //
            //
            // SharedPreferences prefs = await SharedPreferences.getInstance();
            // prefs.setString("fullname", name);
            // prefs.setString("email", email);
            // prefs.setString("id", googleid);
            // Navigator.of(context).pop();
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context)=>homepage())
            // );
          },
          child: Text("Login With Google"),
        ),
      ),
    );
  }

  Future<void> googleLogin() async {

    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);

      var finalResult = await FirebaseAuth.instance.signInWithCredential(credential);

      print("Result $reslut");
      print(reslut.displayName);
      print(reslut.email);
      print(reslut.photoUrl);





    } catch (error) {
      print(error);
    }


  }


}