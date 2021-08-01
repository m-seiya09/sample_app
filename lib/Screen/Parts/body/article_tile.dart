import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:sample_app/models/article.dart';
import 'package:sample_app/screen/main/article_display.dart';

@immutable
class ArticleTile extends HookWidget {
  
  ArticleTile(this.item);
  final ArticleData item;

  @override
  Widget build(BuildContext context)
  {

    return ListTile(
      title: Text(item.title ?? ''),
      subtitle: Text(item.name ?? ''),
      onTap: () => Navigator.push(
        context, 
        MaterialPageRoute<void>(
          builder: (context) => ArticleDisplay(item.url)
        )
      ),
    );
  }
}