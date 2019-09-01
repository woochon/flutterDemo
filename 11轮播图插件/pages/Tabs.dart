import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';
class TablesPage extends StatefulWidget {
  final int index;
  TablesPage ({Key key,this.index=0}) : super(key: key);

  _TablesPage  createState() => _TablesPage (this.index);
}

class _TablesPage extends State<TablesPage > {
  int _currentIndex;
  _TablesPage(index){
    this._currentIndex=index;
  }
  
  List pagesList = [
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];

  List titleList = [
    Text('首页组件'),
    Text('分类组件'),
    Text('设置组件'),
  ];
  @override
  Widget build(BuildContext context) {     
    return Scaffold(
      appBar:AppBar(
        title:titleList[_currentIndex],
      ),
      body:pagesList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex=index; 
          });
        },
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类'),
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('设置'),
          ),
        ]
      ),
    );  
  }
}