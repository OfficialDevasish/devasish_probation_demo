import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class cachedimage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    const title = 'Cached Images';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Center(
          child: CachedNetworkImage(
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl: 'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}