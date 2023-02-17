import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Popup example'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Hello"),
      ],
    ),
    actions: <Widget>[
      new TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        // textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}
