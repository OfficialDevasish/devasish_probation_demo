import 'package:flutter/material.dart';



class silverappbarfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                actions: <Widget>[
                  Icon(Icons.person, size: 40,)
                ],
                title: Text("SliverAppBar Demo"),
                leading: Icon(Icons.menu),
                backgroundColor: Colors.green,
                expandedHeight: 100.0,
                floating: true,
                pinned: true
            )
            // Place sliver widgets here
          ],
        ),
      ),
    );
  }
}