import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:sample_app/screen/parts/app_bar/header.dart';


class ArticleDisplay extends StatelessWidget {

  ArticleDisplay(this._url);
  
  final String? _url;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: Header('詳細表示'),
      body: WebView(
        initialUrl: _url,
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}