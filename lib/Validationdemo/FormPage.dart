// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import 'CustomFormField.dart';
//
// class FormPage extends StatefulWidget {
//   const FormPage({Key? key}) : super(key: key);
//   @override
//   _FormPageState createState() => _FormPageState();
// }
// class _FormPageState extends State<FormPage> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               CustomFormField(
//                 hintText: 'Name',
//                 inputFormatters: [
//                   FilteringTextInputFormatter.allow(
//                     RegExp(r"[a-zA-Z]+|\s"),
//                   )
//                 ],
//                 validator: (val) {
//                   if (!val.isValidName) return 'Enter valid name';
//                 },
//               ),
//               CustomFormField(
//                 hintText: 'Email',
//                 validator: (val) {
//                   if (!val.isValidEmail) return 'Enter valid email';
//                 },
//               ),
//               CustomFormField(
//                 hintText: 'Phone',
//                 inputFormatters: [
//                   FilteringTextInputFormatter.allow(
//                     RegExp(r"[0-9]"),
//                   )
//                 ],
//                 validator: (val) {
//                   if (!val.isvalidPhone) return 'Enter valid phone';
//                 },
//               ),
//               CustomFormField(
//                 hintText: 'Password',
//                 validator: (val) {
//                   if (!val.isValidPassword) return 'Enter valid password';
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: const Text('Submit'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }