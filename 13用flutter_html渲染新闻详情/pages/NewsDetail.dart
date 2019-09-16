import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

class NewsDetailPage extends StatefulWidget {
  final arguments;
  NewsDetailPage({Key key, this.arguments}) : super(key: key);

  _NewsDetailPageState createState() => _NewsDetailPageState(this.arguments);
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  Map arguments;
  List _list = [];
  _NewsDetailPageState(this.arguments);
  Dio dio = Dio();

  void _getData() async {
    String apiUrl =
        'http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=${this.arguments['aid']}';
    Response result = await dio.get(apiUrl);
    print(result.data);

    setState(() {
      this._list = json.decode(result.data)['result'];
    });
  }

  @override
  void initState() {
    super.initState();
    this._getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('新闻详情页')),
        body: ListView(
          children: <Widget>[
            Text(this._list.length>0?this._list[0]['title']:''),
            Html(
              data: """
                ${this._list.length>0?this._list[0]['content']:''}
              """,
              //Optional parameters:
              padding: EdgeInsets.all(8.0),
              backgroundColor: Colors.white70,
              defaultTextStyle: TextStyle(fontFamily: 'serif'),
              linkStyle: const TextStyle(
                color: Colors.redAccent,
              ),
              onLinkTap: (url) {
                // open url in a webview
              },
              onImageTap: (src) {
                // Display the image in large form.
              },
              //Must have useRichText set to false for this to work.
              // customRender: (node, children) {
              //   if(node is dom.Element) {
              //     switch(node.localName) {
              //       case "video": return Chewie(...);
              //       case "custom_tag": return CustomWidget(...);
              //     }
              //   }
              // },
              customTextAlign: (dom.Node node) {
                if (node is dom.Element) {
                  switch (node.localName) {
                    case "p":
                      return TextAlign.justify;
                  }
                }
              },
              customTextStyle: (dom.Node node, TextStyle baseStyle) {
                if (node is dom.Element) {
                  switch (node.localName) {
                    case "p":
                      return baseStyle
                          .merge(TextStyle(height: 2, fontSize: 20));
                  }
                }
                return baseStyle;
              },
            )
          ],
        ));
  }
}
