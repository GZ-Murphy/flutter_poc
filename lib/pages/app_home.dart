import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/btn_nav.dart';
import '../components/content_list.dart';
import '../components/detal_list.dart';

class AppHomePage extends StatefulWidget {
  AppHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

//  final String title;

  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  final supTab = <Tab>[
    Tab(text: '最新'),
    Tab(text: '儿童成长'),
    Tab(text: '家庭关系'),
//    Tab(text: '家庭理财'),
    Tab(text: '潮行'),
  ];
  final supTabContent = <Widget>[
    ContentList(),
    DetailList(title:'儿童成长'),
    DetailList(title:'家庭关系'),
//    Center(child: Text('家庭理财内容'),),
    DetailList(title:'潮行'),
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
        length: supTab.length,
        child: Scaffold(
            appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: AppHeader(title: '亲子王国'),
              bottom: TabBar(
                tabs: supTab,
              ),
            ),
            body: TabBarView(
              children: supTabContent,
            ),
            bottomNavigationBar: AppBottomNavigation(pageIdx: 0)));
  }
}
