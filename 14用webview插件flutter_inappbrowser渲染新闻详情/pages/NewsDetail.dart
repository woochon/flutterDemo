import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'dart:async';
// import 'dart:convert';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class NewsDetailPage extends StatefulWidget {
  final arguments;
  NewsDetailPage({Key key, this.arguments}) : super(key: key);

  _NewsDetailPageState createState() => _NewsDetailPageState(this.arguments);
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  Map arguments;
  // List _list = [];
  _NewsDetailPageState(this.arguments);
  // Dio dio = Dio();

  // void _getData() async {
  //   String apiUrl =
  //       'http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=${this.arguments['aid']}';
  //   Response result = await dio.get(apiUrl);
  //   // print(result.data);

  //   setState(() {
  //     this._list = json.decode(result.data)['result'];
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   this._getData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('新闻详情页')),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent)
                  ),
                  child: InAppWebView(
                    initialUrl: 'http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=${this.arguments['aid']}',
                    initialHeaders: {

                    },
                    initialOptions: {

                    },
                    // onWebViewCreated: (InAppWebViewController controller) {
                    //   webView = controller;
                    // },
                    // onLoadStart: (InAppWebViewController controller, String url) {
                    //   print("started $url");
                    //   setState(() {
                    //     this.url = url;
                    //   });
                    // },
                    onProgressChanged: (InAppWebViewController controller, int progress) {
                      setState(() {
                        print(progress/100);
                      });
                    },
                  ),
                ),
            )
          ],
        )
    );
  }
}
