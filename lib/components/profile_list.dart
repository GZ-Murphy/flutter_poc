import 'package:flutter/material.dart';
import 'dart:ui';
import './login_section.dart';
import './item_grid.dart';
import './item_list.dart';

class ProfileList extends StatefulWidget {
  ProfileList({Key key}) : super(key: key);

  @override
  _ProfileListState createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(child: LoginSection()),
            SliverGrid.count(crossAxisCount: 4, children: [
              ItemGrid(
                  text: '主题',
                  icon: Icons.view_list,
                  color: Colors.green,
                  url: 'url'),
              ItemGrid(
                  text: '回复',
                  icon: Icons.reply,
                  color: Colors.green,
                  url: 'url'),
              ItemGrid(
                  text: '收藏主题',
                  icon: Icons.star,
                  color: Colors.yellow,
                  url: 'url'),
              ItemGrid(
                  text: '收藏板块',
                  icon: Icons.star,
                  color: Colors.yellow,
                  url: 'url'),
            ]),
            SliverToBoxAdapter(
                child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              children: <Widget>[
                ItemList(
                    text: '我的好友',
                    icon: Icons.star,
                    color: Colors.yellow,
                    url: 'url'),
                ItemList(
                    text: '我的相册',
                    icon: Icons.image,
                    color: Colors.greenAccent,
                    url: 'url'),
                ItemList(
                    text: '浏览历史',
                    icon: Icons.schedule,
                    color: Colors.blueAccent,
                    url: 'url'),
              ],
            )),
            SliverToBoxAdapter(
                child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              children: <Widget>[
                ItemList(
                    text: 'WhatsApp贴图',
                    icon: Icons.perm_media,
                    color: Colors.green[300],
                    url: 'url'),
              ],
            )),
            SliverToBoxAdapter(
                child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              children: <Widget>[
                ItemList(
                    text: '使用意见',
                    icon: Icons.create,
                    color: Colors.blue[300],
                    url: 'url'),
                ItemList(
                    text: '故障报告',
                    icon: Icons.warning,
                    color: Colors.yellow,
                    url: 'url'),
              ],
            )),
             SliverToBoxAdapter(
                child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              children: <Widget>[
                ItemList(
                    text: '设置',
                    icon: Icons.settings,
                    color: Colors.red[300],
                    url: 'url'),
              ],
            ))
          ],
        ));
  }
}
