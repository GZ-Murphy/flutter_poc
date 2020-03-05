import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  AppHeader({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(this.title);
  }
}
