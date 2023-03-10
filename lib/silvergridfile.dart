import 'package:flutter/material.dart';



class silvergridfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                actions: <Widget>[
                  Icon(Icons.camera_front, size: 40,)
                ],
                title: Text("SliverGrid Demo"),
                leading: Icon(Icons.menu),
                backgroundColor: Colors.blue,
                expandedHeight: 100.0,
                floating: true,
                pinned: true
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ) ,
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                return new Container(
                    color: _randomPaint(index),
                    height: 150.0
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
Color _randomPaint(int index) {
  if (index % 3 == 0) {
    return Colors.orange;
  } else if (index % 3 == 1) {
    return Colors.white;
  }
  return Colors.green;
}
