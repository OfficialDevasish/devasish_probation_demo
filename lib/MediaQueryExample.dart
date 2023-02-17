import 'package:flutter/material.dart';




class MediaQueryExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: Text("Geeks for Geeks"), backgroundColor: Colors.green),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {

          // constraints provide us with maxWidth,maxHeight etc, using
          // which we can show different widgets accordingly

          if (constraints.maxWidth > 600) {
            // as the width is greater than 600px, we'll show wide screen container
            // with two containers in a row

            return _buildWideScreenContainers();
          } else {
            return _buildPortraitContainer();
          }
        },
      ),
    );
  }

  Widget _buildPortraitContainer() {

// here we're returning a single container since the phone
// doesn't has the required width (600px)
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideScreenContainers() {

// here we're returning double containers since the phone
// has the required width (600px)
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
