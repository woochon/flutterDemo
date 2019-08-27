// 有状态组件传参：有值和无值
import 'package:flutter/material.dart';
class DetailInfo extends StatefulWidget {
  final Map arguments;
  DetailInfo({Key key,this.arguments}) : super(key: key);

  _DetailInfoState createState() => _DetailInfoState(arguments:this.arguments);
}

class _DetailInfoState extends State<DetailInfo> {
  final Map arguments;
  _DetailInfoState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('有状态组件传参')
      ),
      body:Text('参数${arguments['pid']}')
    );
  }
}