import 'package:flutter/material.dart';
import 'dart:async';
class MyDialog extends Dialog{
  final String title;
  final String content;
  // var timer;
  MyDialog({this.title='标题',this.content='内容'});

  void _showTimer(context){
    var timer;
    timer = Timer.periodic(Duration(milliseconds:2500), (t){
      print('执行');
      Navigator.pop(context);
      t.cancel();
    });
  }

  //@override
  //void dispose() { 
  //  if(this.timer){
  //    this.timer.cancel();
  // }
  //  super.dispose();
  //}
 
  @override
  Widget build(BuildContext context){
    _showTimer(context);
    return Material(
      type:MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(this.title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: (){
                          //if(this.timer){
                          //  this.timer.cancel();
                          //}
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                height: 140,
                child: Text(this.content),
              )
            ],
          ),
        ),
      ),
    );
  }
}