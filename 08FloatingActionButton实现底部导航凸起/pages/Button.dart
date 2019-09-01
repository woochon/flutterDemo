import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Button Page')
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(bottom:40.0),
        color: Colors.red,
        child: FloatingActionButton(
        
          backgroundColor: Colors.green,
          child: Text('Float'),
          onPressed: (){
            print('FloatingAction');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: (){
                  print('普通按钮');
                },
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('FlatButton'),
                onPressed: (){
                  print('FlatButton');
                },
              )
            ],
          ),
          Row(
            children: <Widget>[
              OutlineButton(
                child: Text('OutlineButton'),
                onPressed: (){
                  print('OutlineButton');
                },
              )
            ],
          ),
          Row(
            children: <Widget>[
              MyButton(
                text:'MyButton',
                onPress: (){
                  print('Mybutton');
                },
              )
            ],
          )
        ],
      )
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final onPress;
  final double width;
  final double height;
  const MyButton({Key key,this.text='默认按钮',this.onPress=null,this.width=100.0,this.height=30.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height:this.height,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.onPress,
      )
    );
  }
}