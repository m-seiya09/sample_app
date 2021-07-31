import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sample_app/utils/text_validator.dart';
import 'package:sample_app/view_models/search_page_provider.dart';

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
              validator: (value) => TextValidator.validate(value)
            ),
            RaisedButton(
              child: const Text('検索'),
              onPressed: () {
                if (this._formKey.currentState.validate()) {
                  context.read(searchPageProvider.notifier).search();
                }
              },
            )
          ],
        )
      )
    );
  }
}