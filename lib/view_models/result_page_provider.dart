import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:sample_app/repository/article_repository.dart';
import 'package:sample_app/view_models/search_page_provider.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:sample_app/models/article.dart';
import 'package:sample_app/view_models/state/result_state.dart';

// prividerの宣言
final resultPageProvider = 
      StateNotifierProvider.autoDispose<ResultPageProvider, ResultState>(
        (ref) => ResultPageProvider(ref.read)
      );

class ResultPageProvider extends StateNotifier<ResultState> {

  ResultPageProvider(this._reader): super(const ResultState());

  /* ===== プロパティ定義 ===== */
  final pagingController 
    = PagingController<int, ArticleData>(firstPageKey: 0);
  final Reader _reader;
  final ArticleRepository _articleRepository = ArticleRepository();

  /* ===== メソッド ===== */
  Future<void> search() async
  {
    final _keyWord = _reader(searchPageProvider) ?? '';
    final page = (state.currentPage == 0) 
          ? state.currentPage : state.currentPage + 1;

    final result = await _articleRepository.fetchArticleByTitle(_keyWord, page);
    final _convertResult = result.map(
      (dynamic val) => ArticleData.fromJson(_extract(val))).toList();
    
    if (page > 0) {
      pagingController.appendPage(_convertResult, _convertResult.length);
      state = state.copyWith(currentPage: page);
    } else {
      pagingController.appendLastPage(_convertResult);
      state = state.copyWith(articles: _convertResult);
    }
  }

  Map<String, String> _extract(dynamic val)
  {
    /**
     * 引数で受け取ったvalから必要なデータのみ抽出し、Mapで返す
     */
    return {
      'id': val['id'],
      'name': val['user']['name'],
      'url': val['url'],
      'title': val['title'],
      'profile_image_url': val['user']['profile_image_url'],
    };
  }
}