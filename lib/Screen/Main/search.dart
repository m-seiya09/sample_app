import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sample_app/Screen/Main/result.dart';
import 'package:sample_app/Screen/Parts/Body/search_form.dart';
class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    final List<Widget> _childPages = [SearchForm(), Result()];

    return Consumer(
      builder: (context, watch, child) {

        return IndexedStack(
          index: 0,
          children: _childPages,
        );
      },
    );
  }
}