import 'package:flutter/material.dart';
class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  bool flag = true;
  num groupValue =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Radio Page')
      ),
      body: Column(
        children: <Widget>[
          Radio(
            value: true,
            onChanged: (value){
              setState(() {
               this.flag = value ;
              });
            },
            groupValue: this.flag,
          ),
          Radio(
            value: false,
            onChanged: (value){
              setState(() {
               this.flag = value ;
              });
            },
            activeColor: Colors.red,
            groupValue: this.flag,
          ),
          SizedBox(height: 20),
          Container(
            child: RaisedButton(
              child: Text('获取值'),
              onPressed: (){
                print('选中的值${this.flag}');
              },
        
            ),
          ),
          Divider(),
          RadioListTile(
            value: 0,
            title: Text('list1'),
            onChanged: (value){
              setState(() {
               this.groupValue = value; 
              });
            },
            groupValue: this.groupValue,
          ),
          Divider(),
          RadioListTile(
            value: 1,
            title: Text('list1'),
            onChanged: (value){
              setState(() {
               this.groupValue = value; 
              });
            },
            groupValue: this.groupValue,
          ),
          Divider(),
          RadioListTile(
            value: 2,
            title: Text('list1'),
            onChanged: (value){
              setState(() {
               this.groupValue = value; 
              });
            },
            groupValue: this.groupValue,
          ),
          Container(
            child: RaisedButton(
              child: Text('获取值'),
              onPressed: (){
                print('选中的值${this.groupValue}');
              },
        
            ),
          ),
        ],
      ),
    );
  }
}