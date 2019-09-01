import 'package:flutter/material.dart';

class TextFilePage extends StatefulWidget {
  TextFilePage({Key key}) : super(key: key);

  _TextFilePageState createState() => _TextFilePageState();
}

class _TextFilePageState extends State<TextFilePage> {
  TextEditingController  _userNameController = TextEditingController();
  String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TextFile Page')),
        body: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _userNameController,
                    decoration: InputDecoration(
                      labelText: '用户名'
                    ),
                    onChanged: (value){
                      setState(() {
                        this._userNameController.text =value; 
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    onChanged: (value){
                      setState(() {
                       this._password = value; 
                      });
                    },
                    decoration: InputDecoration(
                      labelText: '密码'
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text('登录'),
                      onPressed: (){
                        print('用户名${this._userNameController.text}====密码${this._password}');
                      },
                    ),
                  )
                  /*
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      icon: Icon(Icons.people),
                      hintText: '请输入用户名',
                      labelText: '用户名',
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '请输入密码',
                      labelText:'密码'
                    ),
                  )
                  */
                ]
              )
            )
    );
  }
}