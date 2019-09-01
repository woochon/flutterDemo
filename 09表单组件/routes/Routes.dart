import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/TextFile.dart';
import '../pages/CheckBox.dart';
import '../pages/Radio.dart';


final routes = {
  '/': (context) => TablesPage(),
  '/form': (context) => FormPage(),
  '/textFile': (context) => TextFilePage(),
  '/checkbox': (context) => CheckBoxPage(),
  '/radio': (context) => RadioPage(),
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
