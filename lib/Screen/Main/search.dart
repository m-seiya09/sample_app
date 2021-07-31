import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sample_app/screen/parts/body/result.dart';
import 'package:sample_app/screen/parts/body/search_form.dart';
import 'package:sample_app/view_models/search_page_provider.dart';

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