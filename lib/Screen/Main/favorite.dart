import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/screen/parts/body/article_tile.dart';

import 'package:sample_app/view_models/favorite_provider.dart';

class Favorite extends StatelessWidget {

  Widget build(BuildContext context)
  {
    return Consumer(
      builder: (context, watch, child) {
        final _articles = watch(favoriteProvider).articles;
        final ids = watch(favoriteProvider).ids;

        return ListView.builder(
          itemCount: _articles.length,
          itemBuilder: (BuildContext context, index) {
            return ArticleTile(_articles[index]);
          },
        );
      },
    );
  }
}