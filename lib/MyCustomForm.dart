import 'package:devasish_probation_demo/homepage.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/intl.dart';

class MyCustomForm extends StatefulWidget {
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final nameController = TextEditingController();
  final LastnameController = TextEditingController();
  final emailController = TextEditingController();
  final cemailController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();
  TextEditingController dateInput = TextEditingController();




  double sideLength = 50;
  var gender = "male";

  _handleRadioButton(val) {
    setState(() {
      gender = val;
    });
  }
  GlobalKey<FormState> _formKey = GlobalKey();

  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
    final ValueChanged<String> onSubmit;
  }
  bool formIsValid = false;
  // String fullName = '';
  // String email = '';
  var pattern ="";
  @override



  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xff00BCD1),
        appBar: AppBar(
          title: Text("MyCustom Form"),
        ),
        body: SingleChildScrollView(
          child: Form(

            key: _formKey,
            child: Column(children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'What do people call you?',
                  labelText: 'First Name ',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))')|| value!.isEmpty)
                      ? 'Do not use the Special char.'
                      : null;
                },
              ),
              TextFormField(
                controller: LastnameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Last Name ',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))')|| value!.isEmpty)
                      ? 'Do not use the Special char.'
                      : null;
                },
              ),

              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Enter Your Email Address',
                  labelText: 'Email ',
                ),
                // onSaved: (String? value) {
                //   // This optional block of code can be used to run
                //   // code when the user saves the form.
                // },
                validator: (String? value) {
                  RegExp regex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                  if (!(regex.hasMatch(value!)))
                    return "Please Enter Valid Email";
                  return (value != null && value.contains('#')|| value!.isEmpty)
                      ? 'Please Valid email.'
                      : null;
                },
              ),
              TextFormField(
                controller: cemailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Re-Enter Your Email Address',
                  labelText: 'Confirm\nEmail',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  RegExp regex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                  if (!(regex.hasMatch(value!)))
                    return "Invalid Email";
                  return (value != emailController.text  && value != null || value!.isEmpty &&value.contains('#') )
                      ? 'Email Address Not Matched.'
                      : null;
                },
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
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.key),
                  labelText: 'PassWord ',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  print("My Output$value");
                  return ((value != null && value.contains('@')) || value!.isEmpty)
                      ? 'Use Password Format Abc@123.'
                      : null;
                },
              ),

              TextFormField(
                controller: cpasswordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.key),
                  labelText: 'Confirm\n Password ',
                ),
                onSaved: (String? value) {
                  controller: cpasswordController;
                  validator: (val){
                  if(val.isEmpty)
                  return 'Empty';
                  if(val != passwordController.text)
                  return 'Not Match';
                  return null;
                  };
                },
                validator: (String? value) {
                  if(value!.isEmpty)
                    return 'Empty';
                  if(value != passwordController.text)
                    return 'Not Matched';
                  return null;
                  return (value != null && value.contains('ONLY 1234') || value!.isEmpty)
                      ? 'Use Password Format Abc@123.'
                      : null;
                },
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //   child: Form(
              //     key: _formKey,
              //     child: Column(
              //       // crossAxisAlignment: CrossAxisAlignment.start,
              //       children: <Widget>[
              //         SizedBox(height: 30),
              //         TextField(
              //           decoration: InputDecoration(
              //             labelText: 'Name',
              //             border: OutlineInputBorder(
              //               borderSide: BorderSide(),
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         TextFormField(
              //           decoration:
              //               const InputDecoration(labelText: "enter email"),
              //           validator: (value) {
              //             if (value!.isEmpty) {
              //               return "Please enter email.";
              //             }
              //             return null;
              //           },
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 30,
              ),
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
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

              Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(15),
                        height: MediaQuery.of(context).size.width / 3,
                        child: Center(
                            child: TextField(
                              controller: dateInput,
                              //editing controller of this TextField
                              decoration: InputDecoration(

                                  icon: Icon(Icons.calendar_today), //icon of text field
                                  labelText: "Enter Date" //label text of field
                              ),
                              readOnly: true,
                              //set it true, so that user will not able to edit text
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime.now());

                                if (pickedDate != null) {
                                  print(
                                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                  String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                                  print(
                                      formattedDate); //formatted date output using intl package =>  2021-03-16
                                  setState(() {
                                    dateInput.text =
                                        formattedDate; //set output date to TextField value.
                                  });
                                } else {}
                              },
                            )))
                  ],
              ),
              ElevatedButton(
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed:() {
                  setState(() {


                    if (_formKey.currentState!.validate()) {

                      var route = MaterialPageRoute(
                        builder: (BuildContext context) =>
                            homepage(value: emailController.text),
                      );
                      Navigator.of(context).push(route);
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(
                      //  content: Text('Processing Data')),
                      // );
                    }

                  },
                  );
                })]),
          ),
        ));
  }
}
