import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sample_app/Screen/Main/search.dart';
import 'package:sample_app/Utils/text_validator.dart';

class SearchForm extends StatelessWidget {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.search),
                border: OutlineInputBorder(),
                hintText: 'flutter'
              ),
              autovalidate: true,
              validator: (value) {
                final result = TextValidator.validate(value);
                // if (result['status']) 

                return result['message'];
              },
            ),
            RaisedButton(
              child: const Text('検索'),
              onPressed: () {
                context.read(searchPageProvider.notifier).changePage('result');
              },
            )
          ],
        )
      )
    );
  }
}