import 'package:flutter/material.dart';
class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          RaisedButton(
            child: Text('登录'),
            onPressed: (){
              
            },
          ),
          SizedBox(height: 30.0),
          RaisedButton(
            child: Text('注册'),
            onPressed: (){
              
            },
          ),
          SizedBox(height: 30.0),
        ],
      );
  }
}