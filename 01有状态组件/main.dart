import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:Text('flutter demo')
        ),
        body:HomePage()
      )
    );
  }
}


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
            children:this.list.map((value){
              return ListTile(
                title: Text(value),
              );
            }).toList()
        ),
        RaisedButton(
          child: Text('按钮'),
          onPressed: (){
            setState(() {
             this.list.add('新闻1'); 
             this.list.add('新闻2');
            });
          },
        ),
      ],
    );
  }
}