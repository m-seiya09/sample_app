import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sample_app/screen/parts/body/result.dart';
import 'package:sample_app/screen/parts/body/search_form.dart';
import 'package:sample_app/view_models/search_page_provider.dart';

class Search extends StatelessWidget {

  final int _resultIndex = SearchPageProvider.pageIndex['result'] ?? 1;

  @override
  Widget build(BuildContext context)
  {
    return Consumer(
      builder: (context, watch, child) {
        final _childPages = <Widget>[SearchForm()];
        final _currentIndex = watch(searchPageProvider).currentIndex;

        (_currentIndex == _resultIndex) 
          ? _childPages.add(Result()) : _childPages.remove(Result());

        return IndexedStack(
          index: _currentIndex,
          children: _childPages,
        );
      },
    );
  }
}