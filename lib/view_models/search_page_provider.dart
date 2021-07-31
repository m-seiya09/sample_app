import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:sample_app/repository/qiita_api_repository.dart';

final searchPageProvider = StateNotifierProvider<SearchPageProvider, int>((_) => SearchPageProvider());

class SearchPageProvider extends StateNotifier<int> {

  final QiitaApiRepository _qiitaApiRepository = QiitaApiRepository();

  SearchPageProvider(): super(0);

  final Map<String, int> _pageIndex = {
    'search': 0,
    'result': 1
  };

  void changePage(String key)
  {
    /**
     * ページを切り替える
     */
    AsyncValue.data(this._pageIndex[key]);
  }

  void search() async
  {
    try {
      List result = await this._qiitaApiRepository.fetchArticleByTitle('php');
      print('取得終了');
      print(result[1]['title']);
      this.state = this._pageIndex['result'];
    } on Exception catch(e) {
      print('==========error=============');
      print(e);
    }
  }
}