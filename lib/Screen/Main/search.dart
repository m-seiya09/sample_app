import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sample_app/Screen/Parts/Body/result.dart';
import 'package:sample_app/Screen/Parts/Body/search_form.dart';
import 'package:sample_app/ViewModels/search_page_provider.dart';

final searchPageProvider = StateNotifierProvider<SearchPageProvider, int>((_) => SearchPageProvider());
class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    final List<Widget> _childPages = [SearchForm(), Result()];

    return Consumer(
      builder: (context, watch, child) {
        final int _currentIndex = watch(searchPageProvider);

        return IndexedStack(
          index: _currentIndex,
          children: _childPages,
        );
      },
    );
  }
}