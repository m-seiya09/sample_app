import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:sample_app/models/article.dart';
import 'package:sample_app/screen/main/article_display.dart';
import 'package:sample_app/view_models/favorite_provider.dart';

@immutable
class ArticleTile extends HookWidget {
  
  ArticleTile(this.item);
  final ArticleData item;

  @override
  Widget build(BuildContext context)
  {
    final _favoriteProvider = useProvider(favoriteProvider.notifier);
    return Consumer(
      builder: (context, watch, child) {
        final _favIds = watch(favoriteProvider).ids;
        return ListTile(
          title: Text(item.title ?? ''),
          subtitle: Text(item.name ?? ''),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => ArticleDisplay(item.url)
            )
          ),
          onLongPress: () => _favoriteProvider.tapIcon(item),
          trailing: Icon(
            _favIds.contains(item.id) ? Icons.favorite : Icons.favorite_border,
            color: _favIds.contains(item.id) ? Colors.red : null,
          ),
        );
      },
    );
  }
}