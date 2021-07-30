import 'package:state_notifier/state_notifier.dart';

class SearchPageProvider extends StateNotifier<int> {

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
    if (this.state != _pageIndex[key]) this.state = _pageIndex[key];
  }
}