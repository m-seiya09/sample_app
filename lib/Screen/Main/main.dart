import 'package:flutter/material.dart';

import 'package:sample_app/Screen/Parts/Bottom/BottomNavBar.dart';

class Main extends StatelessWidget {

  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Text('メイン'),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}