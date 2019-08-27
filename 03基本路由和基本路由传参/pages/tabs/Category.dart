import 'package:flutter/material.dart';
import '../Detail.dart';
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
          child: Text('跳转到内容详情页1'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder:(context){
                  return DetailPage(title:'详情页1');
                }
              )
            );
          },
        ),
        SizedBox(height: 20.0),
        RaisedButton(
          child: Text('跳转到内容详情页2'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder:(context)=>DetailPage(title:'详情页2')
              )
            );
          },
        ),
      ],
    );
  }
}