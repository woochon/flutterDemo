import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {

  String title;

  DetailPage({this.title='表单'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('分类详情页')
      ),
      body:Text(this.title),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    );
  }
}