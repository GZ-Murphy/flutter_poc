import 'package:flutter/material.dart';

import 'dart:ui';

class ItemGrid extends StatelessWidget {
  ItemGrid({Key key, this.text, this.icon, this.color, this.url})
      : super(key: key);
  final String text;
  final IconData icon;
  final Color color;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.only(top:5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Icon(
                      this.icon,
                      color: this.color,
                    ))),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ));
  }
}
