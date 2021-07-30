import 'package:flutter/material.dart';
import 'package:sample_app/Screen/Parts/AppBar/header.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleDisplay extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: Header('詳細表示'),
      body: WebView(
        initialUrl: 'https://qiita.com/rydein/items/1fa1fd6046dbef837375',
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}