// 无状态组件传参有值和无值的情况

import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {

  final arguments;

  DetailPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    print(this.arguments);
    return Scaffold(
      appBar: AppBar(
        title:Text('分类详情页')
      ),
      body:Text("商品详情${arguments!=null?arguments['id']:'0'}"),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },

      ),
    );
  }
}