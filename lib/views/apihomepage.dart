import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Productmodel> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://www.tecocraft.com/eatenglish/test_category'));


  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Productmodel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Productmodel {
  final int id;
  final String name;
  final String slug;

  const Productmodel({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory Productmodel.fromJson(Map<String, dynamic> json) {
    return Productmodel(
      id: json['userId'],
      name: json['id'],
      slug: json['title'],
    );
  }

  get parent => null;
}

// void main() => runApp(const MyApp());
//
class apihomepage extends StatefulWidget {
//   const MyApp({super.key});

  @override
  State<apihomepage> createState() => _apihomepageState();
}

class _apihomepageState extends State<apihomepage> {
  late Future<Productmodel> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
    print("response $fetchAlbum()");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Api Homepage'),
        ),
        body: Center(
          child: FutureBuilder<Productmodel>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.slug);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}