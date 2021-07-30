
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sample_app/main.dart';

// BottomNavigationBarのパーツ
class BottomNavBar extends StatelessWidget {
   
  @override
  Consumer build(BuildContext context)
  {
    return Consumer(
       builder: (context, watch, child)  {
        final int _currentIndex = watch(bottomIndexProvider);

        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('さがす')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('お気に入り')
            )
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            context.read(bottomIndexProvider.notifier).changeIndex(index);
          },
        );
      }
    );
  }
}