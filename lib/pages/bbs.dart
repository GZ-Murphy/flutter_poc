import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moment/moment.dart';
import '../components/product_list.dart';

class BBSPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BBSPageState();
}

class _BBSPageState extends State<BBSPage> {
  bool floating = true;
  bool snap = true;
  bool pinned = true;

  String get timeNow {
    final _now = DateTime.now();
    // Moment(_now.toString()).format('yyyy-MM-dd');

    return _now.toString().substring(0, 10);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              _buildAction(),
            ],
            title: Text('论坛'),
            backgroundColor: Theme.of(context).accentColor,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/food01.jpeg', fit: BoxFit.cover),
            ),
            floating: floating,
            snap: snap,
            pinned: pinned,
          ),
          SliverFixedExtentList(
            itemExtent: 120.0,
            delegate: SliverChildListDelegate(
              productsForList.map((product) {
                return _buildItem(product);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAction() {
    return PopupMenuButton(
      itemBuilder: (context) => [
        const PopupMenuItem<String>(
            value: '/',
            child: ListTile(
              title: Text("首页"),
              trailing: Icon(Icons.home),
            )),
        const PopupMenuItem<String>(
            value: '/club',
            child: ListTile(
              title: Text("会员会所"),
              trailing: Icon(Icons.account_balance),
            )),
        const PopupMenuItem<String>(
            value: '/msg',
            child: ListTile(
              title: Text("信息"),
              trailing: Icon(Icons.menu),
            )),
        const PopupMenuItem<String>(
            value: '/profile',
            child: ListTile(
              title: Text("我的"),
              trailing: Icon(Icons.account_circle),
            )),
      ],
      onSelected: (value) {
        Navigator.pushNamed(context, value);
      },
    );
  }

  Widget _buildItem(ContentItem product) {
    return Container(
        height: 40,
        color: Colors.grey[200],
        margin: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Card(
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ClipRRect(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: Image.asset(
                        product.asset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 250,
                        //    color: Colors.green,
                        height: 60,
                        // margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          product.name,
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.title,
                        ),
                      ),
                      Container(
                         // color: Colors.blue,
                          width: 250,
                          height: 20,
                          //margin: EdgeInsets.only(left: 70.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.alarm,color: Colors.red[200],),
                              Padding(
                                padding: EdgeInsets.only(right:10),
                                child:  Text(
                                '刚才',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[600]),
                              ),
                              ),
                             
                              Icon(Icons.chat_bubble, color: Colors.blue[200],),
                              Padding(
                                padding: EdgeInsets.only(right:20),
                                child:  Text(
                                '12',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[600]),
                              ),
                              ),
                              Text(
                                '匿名用户: ${timeNow}',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[600]),
                              ),
                            ],
                          ))
                    ],
                  )),
            ],
          ),
        ));
  }
}
