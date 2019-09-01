import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/DateOrigin.dart';
import '../pages/DatePub.dart';

final routes = {
  '/': (context) => TablesPage(),
  '/dateOrigin':(context) => DateOriginPage(),
  '/datePubPage':(context) => DatePubPage(),
  
};
Function onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
