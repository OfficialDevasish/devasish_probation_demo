import 'package:flutter/material.dart';

class multiplecheckboxfile extends StatefulWidget {
  @override
  multiplecheckboxfileState createState() => new multiplecheckboxfileState();
}

class multiplecheckboxfileState extends State<multiplecheckboxfile> {
  Map<String, bool> values = {
    'Flutter' : false,
    'Java' : false,
    'andriod' : false,
    'linux' : false,
    'kotlin' : false,

  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text('Multiple CheckBox Demo')),
      body: ListView(
        children: values.keys.map((String key) {
          return new CheckboxListTile(
            title: Text(key),
            value: values[key],
            onChanged: (bool? value) {
              setState(() {
                values[key] = value!;
              });
            },
          );
        }).toList(),
      ),
    );
  }
}

