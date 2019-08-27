import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/appBarDemo.dart';
import '../pages/tabControllorPage.dart';

final routes = {
  '/': (context) => TablesPage(),
  '/appBar':(context) => AppBarDemoPage(),
  '/tabControllor':(context) => TabControllorPage(),
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
