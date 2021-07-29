 import 'package:flutter/material.dart';

class Search extends StatelessWidget {

  Widget build(BuildContext context)
  {
    return ListView.builder(
      itemBuilder: (context,index){
        return Text('A   $index');
      });
  }
}