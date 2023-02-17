import 'package:devasish_probation_demo/MediaQueryExample.dart';
import 'package:devasish_probation_demo/animatedcontainerfile.dart';
import 'package:devasish_probation_demo/cliprectfile.dart';
import 'package:devasish_probation_demo/instalikebutton.dart';
import 'package:devasish_probation_demo/likebuttonfile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Validationdemo/FormPage.dart';
import 'camerapermission.dart';
import 'cliprectdemo.dart';
import 'svgfile.dart';


void main()async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,


      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),


      home:instalikebutton(),
    );
  }
}
