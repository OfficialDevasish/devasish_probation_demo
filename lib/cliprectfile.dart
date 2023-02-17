import 'package:flutter/material.dart';



class cliprectfile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('ClipRect demo')),
        body: ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.5,
            child: Image.network(""),
          ),
        ),
      ),
    );
  }
}

class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40.0),
      constraints: const BoxConstraints.expand(),
      // Add a FittedBox to make ClipRRect sized accordingly to the image it contains
      child: FittedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: const _FakedImage(),
        ),
      ),
    );
  }
}


class _FakedImage extends StatelessWidget {
  const _FakedImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      // Set constraints as if it were a 400x400 image
      constraints: BoxConstraints.tight(const Size(400, 400)),
      color: Colors.blueGrey,
      child: const FlutterLogo(),
    );
  }
}

