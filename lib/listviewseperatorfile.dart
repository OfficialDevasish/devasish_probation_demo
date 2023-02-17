import 'package:flutter/material.dart';

class listviewseperatorfile extends StatefulWidget {
  const listviewseperatorfile({Key? key}) : super(key: key);

  @override
  State<listviewseperatorfile> createState() => _listviewseperatorfileState();
}

class _listviewseperatorfileState extends State<listviewseperatorfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("ListViewSeperator Demo"),
      ),
      body: Center(
         child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
            itemCount: 20,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text("Index $index")),
            ),
          )
      ),
    );

  }
}
