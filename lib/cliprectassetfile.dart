import 'package:flutter/material.dart';

class cliprectassetfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final urlImage1 = 'assets/images2.jpeg';
    final urlImage2 = 'assets/image1.jpeg';
    final urlImage3 = 'assets/images3.jpeg';

    return ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        Image.asset(
          urlImage1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 16),
        Image.asset(
          urlImage3,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 16),
        Image.asset(
          urlImage3,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}