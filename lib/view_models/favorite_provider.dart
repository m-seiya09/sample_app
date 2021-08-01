import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/models/article.dart';

import 'package:sample_app/view_models/state/favorite_state.dart';

// providerの宣言
final favoriteProvider =
  StateNotifierProvider<FavoriteProvider, FavoriteState>(
    (ref) => FavoriteProvider()
  );

class FavoriteProvider extends StateNotifier<FavoriteState> {
  FavoriteProvider(): super(const FavoriteState());

  void tapIcon(ArticleData item)
  {
    state.ids.contains(item.id) ? _removeFavorite(item) : _addFavorite(item);
  }

  void _addFavorite(ArticleData item)
  {
    final _favList = state.articles.toList()..add(item);
    final _ids = state.ids.toList()..add(item.id ?? '');

    state = state.copyWith(articles: _favList, ids: _ids);
  }

  void _removeFavorite(ArticleData item)
  {
    final _favList = state.articles.toList()..remove(item);
    final _ids = state.ids.toList()..remove(item.id ?? '');
    state = state.copyWith(articles: _favList, ids: _ids);   
  }
}