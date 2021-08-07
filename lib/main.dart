import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sample_app/screen/main/favorite.dart';
import 'package:sample_app/screen/main/search.dart';
import 'package:sample_app/screen/parts/app_bar/header.dart';
import 'package:sample_app/view_models/bottom_index_provider.dart';
import 'package:sample_app/screen/parts/bottom/bottom_nav_bar.dart';
import 'package:sample_app/view_models/favorite_provider.dart';
void main()
{
  runApp(
    ProviderScope(
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) 
  {
    context.read(favoriteProvider.notifier).initialize();
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Consumer(
        builder: (context, watch, child) {
          final _currentIndex = watch(bottomIndexProvider);
          final _childPages = [Search(), Favorite()];

          return Scaffold(
            appBar: Header('Sample App'),
            body: IndexedStack(
              index: _currentIndex,
              children: _childPages,
            ),
            bottomNavigationBar: BottomNavBar(),
          );
        }
      ),
    );
  }
}