import 'package:flutter/material.dart';

import 'dart:ui';

class ItemList extends StatelessWidget {
  ItemList({Key key, this.text, this.icon, this.color, this.url})
      : super(key: key);
  final String text;
  final IconData icon;
  final Color color;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(
                    color: Colors.grey[300], style: BorderStyle.solid, width: 1))),
        child: Column(

//        alignment: AlignmentDirectional.centerStart,
            children: <Widget>[
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    child: Container(
                        height: 40.0,
                        color: this.color,
                        child: Icon(
                          this.icon,
                          color: Colors.white,
                        )),
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          height: 40.0,
                          color: Colors.white,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(this.text,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500)))),
                  Expanded(
                      flex: 1,
                      child: Container(
                          height: 40.0,
                          width: 20,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ))),
                ],
              ),
              // Divider(color: Colors.grey,)
            ]));
  }
}
