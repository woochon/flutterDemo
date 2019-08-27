import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/SearchPage.dart';
import '../pages/Detail.dart';
import '../pages/DetailInfo.dart';

final routes = {
  '/': (context) => TablesPage(),
  '/search': (context) => SearchPage(),
  '/detail': (context, {arguments}) => DetailPage(arguments: arguments),
  '/detailInfo': (context, {arguments}) => DetailInfo(arguments: arguments),
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
