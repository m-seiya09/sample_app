import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:sample_app/models/article.dart';
import 'package:sample_app/repository/favorite_article_repository.dart';
import 'package:sample_app/view_models/state/favorite_state.dart';

// providerの宣言
final favoriteProvider =
  StateNotifierProvider<FavoriteProvider, FavoriteState>(
    (ref) => FavoriteProvider()
  );

class FavoriteProvider extends StateNotifier<FavoriteState> {
  FavoriteProvider(): super(const FavoriteState());

  final FavoriteArticleRepository _favoriteArticleRepository
    = FavoriteArticleRepository();

  void tapIcon(ArticleData item)
  {
    state.ids.contains(item.id) ? _removeFavorite(item) : _addFavorite(item);
  }

  Future<void> initialize() async
  {
    final _dbItems = await _favoriteArticleRepository.all();

    var _ids = <String>[];
    _dbItems.forEach((item) => _ids.add(item.id));

    state = state.copyWith(articles: _dbItems, ids: _ids);
  }

  Future<void> _addFavorite(ArticleData item) async
  {
    final _ids = state.ids.toList()..add(item.id ?? '');
    await _favoriteArticleRepository.addFavorite(item);
    final _dbItems = await _favoriteArticleRepository.all();

    state = state.copyWith(articles: _dbItems, ids: _ids);
  }

  Future<void> _removeFavorite(ArticleData item) async
  {
    await _favoriteArticleRepository.delteFavorite(item.id ?? '');
    final _ids = state.ids.toList()..remove(item.id ?? '');
    final _dbItems = await _favoriteArticleRepository.all();

    state = state.copyWith(articles: _dbItems, ids: _ids);
  }
}