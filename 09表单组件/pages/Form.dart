import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  int sex = 0;
  String info = '';
  List hobbies = [
    {"checked": true, "title": "篮球"},
    {"checked": false, "title": "羽毛球"},
    {"checked": false, "title": "乒乓球"}
  ];
  List<Widget> GetHobby() {
    List<Widget> tmpList = [];
    for (var i = 0; i < this.hobbies.length; i++) {
      tmpList.add(Row(
        children: <Widget>[
          Text("${this.hobbies[i]['title']} :"),
          Checkbox(
              value: this.hobbies[i]['checked'],
              onChanged: (value) {
                setState(() {
                  this.hobbies[i]['checked'] = value;
                });
              }),
          SizedBox(width: 20)
        ],
      ));
    }
    return tmpList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('form demo')),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: '用户名'),
              controller: _username,
              onChanged: (value) {
                setState(() {
                  this._username.text = value;
                });
              },
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: '密码'),
              controller: _password,
              onChanged: (value) {
                setState(() {
                  this._password.text = value;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(width: 20),
                Text('女'),
                Radio(
                  value: 2,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(width: 20),
                Text('保密'),
                Radio(
                  value: 0,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                  groupValue: this.sex,
                )
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: this.GetHobby(),
            ),
            SizedBox(height: 20),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '备注信息',
                border: OutlineInputBorder()
              ),
              onChanged: (value){
                setState(() {
                 this.info = value; 
                });
              },
            ),
            SizedBox(height: 20),
            Row(children: <Widget>[
              RaisedButton(
                child: Text('提交'),
                onPressed: () {
                  print('姓名：${this._username.text}==密码${this._password.text}==性别${this.sex}');
                  print(this.hobbies);
                  print(this.info);
                      
                },
              )
            ])
          ],
        ));
  }
}
