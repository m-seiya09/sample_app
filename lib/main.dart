import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/Screen/Parts/BottomNavBar.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopPage(),
    );
  }
}

class TopPage extends StatelessWidget {
  
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Text('テスト'),
      ),
      bottomNavigationBar: BottomNavBar()
    );
  }
}