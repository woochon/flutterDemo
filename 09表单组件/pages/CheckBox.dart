import 'package:flutter/material.dart';
class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('checkBox'),
      ),
      body:Column(
        children: <Widget>[
          Checkbox(
            value: this.flag,
            onChanged: (value){
              setState(() {
               this.flag = value; 
              });
            },
            activeColor: Colors.red,
            checkColor: Colors.blue,
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: Text(this.flag?'选中':'未选中'),
          ),
          CheckboxListTile(
            value: this.flag,
            onChanged: (value){
              setState(() {
               this.flag = value; 
              });
            },
            activeColor: Colors.red,
            title: Text('主标题'),
            subtitle: Text('副标题'),
            secondary: Icon(Icons.help),

          )
        ],
      )
    );
  }
}