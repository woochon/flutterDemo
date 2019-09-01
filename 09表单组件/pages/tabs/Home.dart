import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{



  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           RaisedButton(
             child: Text('textFile'),
             onPressed: (){
               Navigator.pushNamed(context,'/textFile');
             },
           ),
           RaisedButton(
             child: Text('checkBox'),
             onPressed: (){
               Navigator.pushNamed(context,'/checkbox');
             },
           ),
           RaisedButton(
             child: Text('radio'),
             onPressed: (){
               Navigator.pushNamed(context,'/radio');
             },
           ),
           RaisedButton(
             child: Text('form Demo'),
             onPressed: (){
               Navigator.pushNamed(context,'/form');
             },
           )
         ],
       ),
    );
  }
}