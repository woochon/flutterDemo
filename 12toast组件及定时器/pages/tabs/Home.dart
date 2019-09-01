import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../components/MyDialog.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void alertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: Text('确定删除吗？'),
            actions: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  print('取消');
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('确定'),
                onPressed: () {
                  print('确定');
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  void simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('下拉选择框'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('Option A'),
                onPressed: () {
                  print('option A');
                  Navigator.pop(context,'Option A');
                },
              ),
              SimpleDialogOption(
                child: Text('Option B'),
                onPressed: () {
                  print('option B');
                  Navigator.pop(context,'Option B');
                },
              ),
              SimpleDialogOption(
                child: Text('Option C'),
                onPressed: () {
                  print('option C');
                  Navigator.pop(context,'Option C');
                },
              )
            ],
          );
        });
        print(result);
  }

  void _showModalBottomSheet() async{
    var result = await showModalBottomSheet(
      context:context,
      builder:(builder){
        return Container(
          height: 220,
          child: Column(
            children: <Widget>[
              ListTile(
                title:Text('分享A'),
                onTap: (){
                  Navigator.pop(context,'A');
                },
              ),
              Divider(),
              ListTile(
                title:Text('分享B'),
                onTap: (){
                  Navigator.pop(context,'B');
                },
              ),
              Divider(),
              ListTile(
                title:Text('分享C'),
                onTap: (){
                  Navigator.pop(context,'C');
                },
              )
            ],
          ),
        );
      }
    );
    print(result);
  }

  void _thirdToast(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 3,
        backgroundColor: Colors.red,
        textColor: Colors.yellow,
        fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(child: Text('AlterDialog'), onPressed: alertDialog),
          RaisedButton(child: Text('SimpleDialog'), onPressed: simpleDialog),
          RaisedButton(
            child: Text('ShowModalBottomSheet'),
            onPressed: _showModalBottomSheet,
          ),
          RaisedButton(
            child: Text('toast-flutter-toast第三方'),
            onPressed: _thirdToast,
          ),
          RaisedButton(
            child: Text('自定义弹框组件'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context){
                  return MyDialog();
                }
              );
            },
          )
        ],
      ),
    );
  }
}
