import 'package:flutter/material.dart';

class TabControllorPage extends StatefulWidget {
  TabControllorPage({Key key}) : super(key: key);

  _TabControllorPageState createState() => _TabControllorPageState();
}

class _TabControllorPageState extends State<TabControllorPage>  with SingleTickerProviderStateMixin{
  TabController _tabController;

  //生命周期函数
  @override
  void initState() { 
    super.initState();

    _tabController = new TabController(
      vsync:this,
      length:6
    );  

    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  //生命周期函数
  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('tabControllor自定义tabs'),

        bottom:TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text:'热销'),
            Tab(text:'推荐'),
            Tab(text:'精品'),
            Tab(text:'推荐'),
            Tab(text:'男装'),
            Tab(text:'女装'),
          ],
        )
      ),
      body:TabBarView(
        controller: this._tabController,
        children: <Widget>[
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第一个tab'),
              ),
              ListTile(
                title: Text('第一个tab'),
              ),
              ListTile(
                title: Text('第一个tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第二个tab'),
              ),
              ListTile(
                title: Text('第二个tab'),
              ),
              ListTile(
                title: Text('第二个tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第三个tab'),
              ),
              ListTile(
                title: Text('第三个tab'),
              ),
              ListTile(
                title: Text('第三个tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第四个tab'),
              ),
              ListTile(
                title: Text('第四个tab'),
              ),
              ListTile(
                title: Text('第四个tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第五个tab'),
              ),
              ListTile(
                title: Text('第五个tab'),
              ),
              ListTile(
                title: Text('第五个tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第六个tab'),
              ),
              ListTile(
                title: Text('第六个tab'),
              ),
              ListTile(
                title: Text('第六个tab'),
              )
            ],
          )
        ],
      )
    );
  }
}