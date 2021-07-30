import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/Screen/Main/search.dart';

class Result extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: <Widget>[
        ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Text(index.toString());
          },
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: ElevatedButton(
            child: Icon(Icons.arrow_back_outlined),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            onPressed: () {
              context.read(searchPageProvider.notifier).changePage('search');
            },
          ),
        )
      ],
    );
  }
}