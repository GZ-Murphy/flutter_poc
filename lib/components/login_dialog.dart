import 'package:flutter/material.dart';

class LoginDialog extends StatelessWidget {
  final TextEditingController _unameController = new TextEditingController();
  final TextEditingController _pwdController = new TextEditingController();
  final GlobalKey _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.all(0),
      title: Container(
        color: Colors.green[700],
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
                flex: 3,
                child: SizedBox(
                  height: 30,
                  child: Text("用户登陆",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      )),
                )),
            Expanded(
                flex: 1,
                child: SizedBox(
                  child: OutlineButton(
                    color: Colors.green,
                    highlightColor: Colors.green[400],
                    splashColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      "注册",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(), //关闭对话框
                  ),
                ))
          ],
        ),
      ),
      content:  Container(
        height: 180,
        child:  Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          child: Column(children: <Widget>[
            TextFormField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    icon: Icon(Icons.person)),
                // 校验用户名
                validator: (v) {
                  return v.trim().length > 0 ? null : "用户名不能为空";
                }),
            TextFormField(
                controller: _pwdController,
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    icon: Icon(Icons.lock)),
                obscureText: true,
                //校验密码
                validator: (v) {
                  return v.trim().length > 5 ? null : "密码不能少于6位";
                }),
          ])),
      ),
     
      actions: <Widget>[
        FlatButton(
          child: Text("取消"),
          onPressed: () => Navigator.of(context).pop(), //关闭对话框
        ),
        RaisedButton(
          child: Text("登陆"),
          onPressed: () {
            if ((_formKey.currentState as FormState).validate()) {
              Navigator.of(context).pop(this._unameController.text); //关闭对话框
            }
          },
        ),
      ],
    );
  }
}
