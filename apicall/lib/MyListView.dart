
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


import 'models/productdetails.dart';

class MyListView extends StatelessWidget {
  final Future<List<Productdata>> items;

  MyListView({required this.items});

  @override

@override

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: items,
      builder: (context, snapshot) {
        // operation for completed state
        if (snapshot.hasData) {
          print("Response type==>${snapshot.data!.length}");


          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
              var item = snapshot.data![index];
              print("Response Pic--->${item.image.toString}");
              print("Response of Name--> ${item.name!}");
                return Column(
                  children:[Container(
                    child:CachedNetworkImage(
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      imageUrl: item.image!.src.toString(),
                      // errorWidget: ,
                    ),
                  ),
                    Card(
                      child: Text(item.id!.toString(),),

                    ),
                    Card(
                      child: Text(item.name!,),

                    ),

                    Card(
                      child: Text(item.parent.toString()),

                    ),
                    Card(
                      child: Text(item.description!),

                    ),
                    Card(
                      child: Text(item.display!),

                    ),




                  ],
                );

              });
        }

        // spinner for uncompleted state
        return Center(
          child: Container(
              alignment: AlignmentDirectional.bottomCenter,
              child: Column(
                children: <Widget>[
                  CircularProgressIndicator(),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
              )),
        );
      },
    );
  }
}
