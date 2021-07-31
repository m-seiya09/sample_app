import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:sample_app/repository/article_repository.dart';

final searchPageProvider 
= StateNotifierProvider<SearchPageProvider, int>((_) => SearchPageProvider());

class SearchPageProvider extends StateNotifier<int> {

  SearchPageProvider(): super(0);

  final ArticleRepository _articleRepository = ArticleRepository();

  final Map<String, int> _pageIndex = {
    'search': 0,
    'result': 1
  };

  void changePage(String key)
  {
    /**
     * ページを切り替える
     */
    if (key == 'search' || key == 'result') {
      state = _pageIndex[key]!;
    }
  }

  void search() async
  {
    try {
      final result = await _articleRepository.fetchArticleByTitle('php');

      changePage('result');

    } on Exception catch(e) {
      print('==========error=============');
      print(e);
    }
  }
}