import 'package:flutter/material.dart';




class firstpagefile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Example - FlutterCorner'),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: TextButton(
          child: Text(
            'Show Pop-up',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),

          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            );
          },
        ),
      ),
    );
  }
}



Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Popup example'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Hello"),
      ],
    ),
    actions: <Widget>[
      new FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        // textColor: Theme.of(context).primaryColor,
        child: Text('Close'),
      ),
    ],
  );
}
