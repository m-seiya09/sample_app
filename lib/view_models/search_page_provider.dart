import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:sample_app/view_models/state/search_state.dart';

// providerの宣言
final searchPageProvider = 
      StateNotifierProvider<SearchPageProvider, SearchState>(
        (ref) => SearchPageProvider()
      );

class SearchPageProvider extends StateNotifier<SearchState> {

  SearchPageProvider(): super(SearchState());

  static Map<String, int> pageIndex = {
    'search': 0,
    'result': 1
  };

  void setKeyWord(String? keyWord) 
    => state = state.copyWith(keyWord: keyWord);

  void changeIndex(String key) 
    => state = state.copyWith(currentIndex: pageIndex[key] ?? 0);
}