import 'package:flutter/material.dart';
import '../Detail.dart';
import '../DetailInfo.dart';
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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder:(context){
                  return DetailPage();
                }
              )
            );
          },
        ),
        SizedBox(height: 20.0),
        RaisedButton(
          child: Text('无状态组件有参数'),
          onPressed: (){
            Navigator.pushNamed(context, '/detail',arguments: {
              "id":123
            });            
          },
        ),
        SizedBox(height: 20.0),
        RaisedButton(
          child: Text('有状态组件匿名路由'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=>DetailInfo(arguments:{'pid':456})
              )
            );
          },
        ),
        SizedBox(height: 20.0),
        RaisedButton(
          child: Text('有状态组件命名路由'),
          onPressed: (){
            Navigator.pushNamed(context, '/detailInfo',arguments:{
              'pid':78911
            });    
          },
        ),
      ],
    );
  }
}