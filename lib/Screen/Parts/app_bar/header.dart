import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget  {

  Header(this._title);

  final String _title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  AppBar build(BuildContext context)
  {
    return AppBar(
      title: Text(_title),
    );
  }
}