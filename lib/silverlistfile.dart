import 'package:flutter/material.dart';



class silverlistfile extends StatelessWidget {
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
                title: Text("SliverList Demo"),
                leading: Icon(Icons.menu),
                backgroundColor: Colors.green,
                expandedHeight: 100.0,
                floating: true,
                pinned: true
            ),
            SliverList(
              delegate: SliverChildListDelegate(_buildList(20)),
            ),// Place sliver widgets here
          ],
        ),
      ),
    );
  }
}
List<Widget> _buildList(int count) {
  List<Widget> listItems = <Widget>[];
  for (int i = 0; i < count; i++) {
    listItems.add(new Padding(padding: new EdgeInsets.all(16.0),
        child: new Text(
            'Sliver Item ${i.toString()}',
            style: new TextStyle(fontSize: 22.0)
        )
    ));
  }
  return listItems;
}