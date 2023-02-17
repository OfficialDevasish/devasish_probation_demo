import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class signinform extends StatefulWidget {
  @override
  State<signinform> createState() => _signinformState();
}

class _signinformState extends State<signinform> {
  TextEditingController dateInput = TextEditingController();
  double sideLength = 50;
  var gender = "male";

  _handleRadioButton(val) {
    setState(() {
      gender = val;
    });
  }

  // void initState() {
  //   dateInput.text = ""; //set the initial value of text field
  //   super.initState();
  // }

  final TextEditingController _email= TextEditingController();
  final TextEditingController _password= TextEditingController();
  final TextEditingController _cpassword = TextEditingController();
  final TextEditingController _controller = TextEditingController();


  @override

  void initState() {
    super.initState();
    _controller.addListener(() {
      final String text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
        TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In Form"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
          child: Container(
        color: Colors.blueGrey,
        child: Column(children: <Widget>[
          const Padding(
            padding:
                EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Enter Your Email Address',
                  hintText: 'Enter valid email id as abc@gmail.com'),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Password',
                  hintText: 'Enter Password'),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'Enter Password'),
            ),
          ),

          Container(
            color: Colors.blueGrey,
            child: Container(
              color: Colors.blueGrey,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 100,
                        child: IntlPhoneField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            labelText: 'Enter your Number',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                          onCountryChanged: (country) {
                            print('Country changed to: ' + country.name);
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  const Text("Male"),
                  Radio(
                    groupValue: gender,
                    value: "male",
                    onChanged: _handleRadioButton,
                  ),
                  const Text("Female"),
                  Radio(
                    groupValue: gender,
                    value: "female",
                    onChanged: _handleRadioButton,
                  ),
                ],
              ),
            ),
          ),
          Container(
              color: Colors.blueGrey,
              padding: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.width / 3,
              child: Center(
                  child: TextField(
                    controller: dateInput,
                    //editing controller of this TextField
                    decoration: const InputDecoration(
                        icon: Icon(Icons.calendar_today),
                        //icon of text field
                        labelText: "Enter Your BirthDate" //label text of field
                    ),
                    readOnly: true,
                    //set it true, so that user will not able to edit text
                    onTap: () async {

                    },
                  ))),
          Center(
            child: Container(
              color: Colors.blueGrey,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ElevatedButton(
                              child: const Text(
                                'Submit',
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {

                                _controller.text="Enter Your Number";
                                _controller.selection = TextSelection.fromPosition(TextPosition(offset:_controller.text.length));
                                //signup screen
                              },

                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      )),
    );
  }
}


