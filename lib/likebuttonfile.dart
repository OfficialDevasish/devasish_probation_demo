
import 'package:ff_annotation_route_library/ff_annotation_route_library.dart';
import 'package:flutter/material.dart';



class likebuttonfile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var Routes;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (BuildContext c, Widget? w) {
        final MediaQueryData data = MediaQuery.of(c);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: 1.0),
          child: w!,
        );
      },
      initialRoute: Routes.fluttercandiesMainpage,
      onGenerateRoute: (RouteSettings settings) {
        var getRouteSettings;
        return onGenerateRoute(
          settings: settings,
          getRouteSettings: getRouteSettings,
        );
      },
    );
  }
}