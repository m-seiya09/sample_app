import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/models/article.dart';
import 'package:sample_app/screen/parts/body/article_tile.dart';

import 'package:sample_app/view_models/favorite_provider.dart';

class Favorite extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Consumer(
      builder: (context, watch, child) {
        final _articles = watch(favoriteProvider).articles;
        return ListView.builder(
          itemCount: _articles.length,
          itemBuilder: (BuildContext context, index) {
            return ArticleTile(ArticleData(
              id: _articles[index].id,
              name: _articles[index].name,
              profileImageUrl: _articles[index].profileImageUrl,
              title: _articles[index].title,
              url: _articles[index].articleUrl
            ));
          },
        );
      },
    );
  }
}