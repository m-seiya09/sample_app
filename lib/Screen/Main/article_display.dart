import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:sample_app/screen/parts/app_bar/header.dart';


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