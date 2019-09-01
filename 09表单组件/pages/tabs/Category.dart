import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
          child: Text('无状态组件无参数'),
          onPressed: (){
            
          },
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}