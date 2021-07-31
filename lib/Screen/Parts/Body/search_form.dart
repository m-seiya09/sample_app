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
              validator: (value) {
                final result = TextValidator.validate(value);
                return result;
              }
            ),
            RaisedButton(
              child: const Text('検索'),
              onPressed: () {
                final validate = _formKey.currentState?.validate() ?? false;
                if (validate) {
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