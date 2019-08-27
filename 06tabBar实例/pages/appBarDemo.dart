import 'package:flutter/material.dart';

/*
appBar: AppBar(
        title:Text('appBarDemo'), 
        centerTitle: true, //标题是否居中
        backgroundColor: Colors.red, //北京颜色
        //leading:Icon(Icons.menu),  //覆盖默认返回
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            print('menu');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print('settings');
            },
          ),
        ],       
      ),
*/

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              title: Text('appBarDemo'),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print('menu');
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print('search');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    print('settings');
                  },
                ),
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: '热门'),
                  Tab(text: '推荐'),
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(title: Text('diyigeTab')),
                  ListTile(title: Text('diyigeTab')),
                  ListTile(title: Text('diyigeTab'))
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(title: Text('第二个Tab')),
                  ListTile(title: Text('第二个Tab')),
                  ListTile(title: Text('第二个Tab'))
                ],
              )
            ],
          )),
    );
  }
}
