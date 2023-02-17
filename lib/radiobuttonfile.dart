import 'package:flutter/material.dart';

class radiobuttonfile extends StatefulWidget {
  @override
  _radiobuttonfileState createState() => _radiobuttonfileState();
}

class _radiobuttonfileState extends State<radiobuttonfile> {
  var gender="male";


  _handleRadioButton(val)
  {
    setState(() {
      gender=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text("Radiobutton Demo"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            children: [
              Text("Male"),
              Radio(
                groupValue: gender,
                value: "male",
                onChanged: _handleRadioButton,
              ),
              Text("Female"),
              Radio(
                groupValue: gender,
                value: "female",
                onChanged:_handleRadioButton,
              ),
              Center(
                child: Column (children: [
                  TextButton(
                    onPressed: (){
                      print("Gender : "+gender);
                    },
                    child: Text("Submit"),
                  )
                ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}