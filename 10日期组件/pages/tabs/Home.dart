import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           RaisedButton(
             child: Text('原生日期组件'),
             onPressed: (){
               Navigator.pushNamed(context, '/dateOrigin');
             },
           ),
           RaisedButton(
             child: Text('第三方日期组件'),
             onPressed: (){
               Navigator.pushNamed(context, '/datePubPage');
             },
           )
         ],
       ),
    );
  }
}