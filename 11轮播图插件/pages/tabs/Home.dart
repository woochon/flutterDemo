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
             child: Text('跳转到轮播图页面'),
             onPressed: (){
               Navigator.pushNamed(context,'/swiper');
             },
           )
         ],
       ),
    );
  }
}