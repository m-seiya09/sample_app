import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget  {

  final String _title;

  Header(this._title);

  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  AppBar build(BuildContext context)
  {
    return AppBar(
      title: Text(this._title),
    );
  }
}