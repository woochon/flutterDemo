import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List _list = [];
  int _page = 1;
  bool _hasMore = true;
  Dio dio = new Dio();

  ScrollController _scrollController = ScrollController(); //listView的控制器

  void _getData() async {
    if(this._hasMore){
      String url = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${this._page}';
      Response result = await dio.get(url);
      setState(() {
        List tmpList = json.decode(result.data)['result'];
        this._list.addAll(tmpList);
        if (tmpList.length < 20) {
          this._hasMore = false;
        }
      });
    }
  }

  //下拉刷新
  Future<void> _onRefresh() async {
    // await Future.delayed(Duration(milliseconds:2000),(){
    //   print('下拉刷新');
    // });
    this._page = 1;
    this._getData();
  }

  //上拉分页加载更多

  @override
  void initState() {
    super.initState();
    this._getData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 40) {
        print('滚动到底部了');
        if (this._hasMore) {
          this._page++;
          this._getData();
        }
      }
    });
  }

  /* 加载更多时显示的组件,给用户提示 */
  Widget _getMoreWidget() {
    if(this._hasMore){
      return Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('加载中。。。', style: TextStyle(fontSize: 16.0)),
              CircularProgressIndicator(strokeWidth: 1.0)
            ],
          ),
        ),
      );
    }else{
      return Center(
        child: Text('--我是有底线的--'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('新闻列表')),
        body: this._list.length > 0
            ? RefreshIndicator(
                onRefresh: _onRefresh,
                child: ListView.builder(
                    controller: _scrollController,
                    itemCount: this._list.length,
                    itemBuilder: (context, index) {
                      if (index == this._list.length - 1) {
                        return Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                this._list[index]['title'],
                                maxLines: 1,
                              ),
                              onTap: (){
                                Navigator.pushNamed(context,'/newsDetail',arguments:{'aid':this._list[index]['aid']});
                              },
                            ),
                            Divider(),
                            this._getMoreWidget()
                          ],
                        );
                      }else{
                        return Column(
                          children: <Widget>[
                            ListTile(
                              title:Text(
                                this._list[index]['title'],
                                maxLines: 1
                              ),
                              onTap: (){
                                Navigator.pushNamed(context,'/newsDetail',arguments:{'aid':this._list[index]['aid']});
                              },
                            ),
                            Divider()
                          ],
                        );
                      }
                    }))
            : this._getMoreWidget());
  }
}
