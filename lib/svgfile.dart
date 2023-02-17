import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class svgfile extends StatefulWidget {
  const svgfile({Key? key}) : super(key: key);

  @override
  State<svgfile> createState() => _svgfileState();
}

class _svgfileState extends State<svgfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SVG Demo"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        alignment: Alignment.center,
        child: ListView(
          children: [
            SvgPicture.network(
              'https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/410.svg',
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
            SvgPicture.asset(
              'assets/sample.svg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
