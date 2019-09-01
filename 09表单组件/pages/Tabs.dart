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
      floatingActionButton: Container(
        padding: EdgeInsets.only(top:10.0),
      
        child: FloatingActionButton(
        
          backgroundColor: this._currentIndex==1?Colors.red:Colors.grey,
          child: Text('Float'),
          onPressed: (){
            print('FloatingAction');
            setState(() {
             this._currentIndex =1; 
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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

      //左侧滑动列表
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child:  UserAccountsDrawerHeader(
                    accountName: Text('woochon'),
                    accountEmail: Text('woochon@163.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://www.itying.com/images/flutter/2.png"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://www.itying.com/images/flutter/3.png"),
                        fit:BoxFit.cover
                      )
                    ),
                  )
                )
              ],
            ),
            ListTile(
              leading:CircleAvatar(
                child: Icon(Icons.home),
              ),
              title:Text('我的空间')
            ),
            ListTile(
              leading:CircleAvatar(
                child: Icon(Icons.person),
              ),
              title:Text('用户中心'),
              onTap: (){
                Navigator.of(context).pop(); //解决点击左上角的返回，页面的侧边导航还在的问题(即没有收起来)
                Navigator.pushNamed(context, '/user');
            
              },
            ),
            ListTile(
              leading:CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title:Text('设置')
            ),
          ],
        ),
      ),
      //右侧滑动列表
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child:  DrawerHeader(
                    child: Text('你好 flutter'),
                    decoration: BoxDecoration(
                      //color: Colors.yellow
                      image: DecorationImage(
                        image:NetworkImage("https://www.itying.com/images/flutter/2.png"),
                        fit:BoxFit.cover
                      ),
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              leading:CircleAvatar(
                child: Icon(Icons.home),
              ),
              title:Text('我的空间')
            ),
            ListTile(
              leading:CircleAvatar(
                child: Icon(Icons.person),
              ),
              title:Text('用户中心')
            ),
            ListTile(
              leading:CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title:Text('设置')
            ),
          ],
        ),
      ),
    );  
  }
}