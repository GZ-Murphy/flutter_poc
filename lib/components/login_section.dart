import 'package:flutter/material.dart';

import 'dart:ui';
import './login_dialog.dart';

class LoginSection extends StatefulWidget {
  LoginSection({Key key}) : super(key: key);
  @override
  _LoginSectionState createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  Future<String> showLoginDialog() {
    return showDialog<String>(
        context: context, builder: (context) => LoginDialog());
  }

  String _userName = '';

  @override
  Widget build(BuildContext context) {
    if (this._userName != '') {
      return Container(
        height: 60.0,
        margin: EdgeInsets.only(bottom:5),
        color: Colors.white,
        child:Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: CircleAvatar(
                child: Icon(
                  Icons.android
                )
              ),
            ),
            Expanded(
              flex: 4,
              child:  Text('${this._userName}'),
            )
          ],
        ) 
      );
    } else {
      return Container(
          height: 100.0,
          color: Colors.white,
          child:
              ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
            RaisedButton(
                color: Colors.green,
                highlightColor: Colors.green[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text('注册/登陆'),
                ),
                onPressed: () async {
                  String userName = await showLoginDialog();
                  if (userName == null) {
                    print('clx');
                  } else {
                    setState(() {
                      _userName = userName;
                    });
                  }
                }),
          ]));
    }
    ;
  }
}
