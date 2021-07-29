import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sample_app/Screen/Main/favorite.dart';
import 'package:sample_app/Screen/Main/search.dart';
import 'package:sample_app/ViewModels/BottomIndexProvider.dart';
import 'package:sample_app/Screen/Parts/Bottom/BottomNavBar.dart';

final bottomIndexProvider = StateNotifierProvider<BottomIndexProvider, int>((ref) => BottomIndexProvider());
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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Consumer(
        builder: (context, watch, child)  {
          final int _currentIndex = watch(bottomIndexProvider);
          final List<Widget> _childPages = [Search(), Favorite()];

          return Scaffold(
            appBar: AppBar(
              title: Text('Sample App'),
            ),
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