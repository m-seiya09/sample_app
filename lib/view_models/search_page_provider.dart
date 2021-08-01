import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

// providerの宣言
final searchPageProvider = 
      StateNotifierProvider<SearchPageProvider, String?>(
        (ref) => SearchPageProvider()
      );

class SearchPageProvider extends StateNotifier<String?> {

  SearchPageProvider(): super(null);


  void setKeyWord(String? keyWord) => state = keyWord;
}