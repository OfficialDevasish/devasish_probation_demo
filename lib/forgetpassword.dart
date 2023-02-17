import 'package:flutter/material.dart';

class forgetpassword extends StatefulWidget {


  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
      ),
      body:SingleChildScrollView(
      child: Column(
        children: [const Padding(
          padding: EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          //padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Your Old Password',
                hintText: 'Enter Your Old Password'),
          ),
        ),
          const Padding(
            padding: EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your New Password',
                  hintText: 'Enter your New Password'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(

              obscureText: true,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Confirm Your New Password',
                  hintText: 'Confirm Your New Password'),
            ),
          ),SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width - 100,
            child: Row(
              children: <Widget>[
                ElevatedButton(
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {

                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          )],

      ),



    ));
  }
}
