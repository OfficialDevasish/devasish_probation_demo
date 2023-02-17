import 'package:devasish_probation_demo/api2calling.dart';
import 'package:devasish_probation_demo/forgetpassword.dart';
import 'package:devasish_probation_demo/views/apihomepage.dart';
import 'package:devasish_probation_demo/views/homescreen.dart';
import 'package:devasish_probation_demo/views/signinform.dart';
import 'package:flutter/material.dart';



class loginscreen extends StatefulWidget {
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  double sideLength = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: AnimatedContainer(

                  margin:const EdgeInsets.only(bottom: 50),
                  height: sideLength,
                  width: sideLength,
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeIn,
                  child: Material(

                    color: Colors.yellow,
                    child: InkWell(
                      onTap: (

                          ) {

                        setState(() {
                          sideLength == 50 ? sideLength = 100 : sideLength = 50;
                        });
                      },
                    child:Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8NPmpl9KEu1fXAmO0TwXtHQr7pS0AqN2Pug&usqp=CAU',
                        width: 1000,
                        height: 950,
                        fit:BoxFit.fill
                    ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
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
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => forgetpassword( )));
                //TODO FORGOT PASSWORD SCREEN GOES HERE

              },
              child:const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => api2calling()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => signinform( )));
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child:const Text(
                  ('New User? Create Account')
              ),
            ),

          ],
        ),
      ),
    );
  }
}