import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/btn_nav.dart';


class MSGPage extends StatefulWidget {
  MSGPage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

//  final String title;

  @override
  _MSGPageState createState() => _MSGPageState();
}

class _MSGPageState extends State<MSGPage> {



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return   Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: AppHeader(
                title:'信息'),
           
          ),
          body: Container(
            child: Text('信息'),
          ),
          bottomNavigationBar:AppBottomNavigation(pageIdx:3)
      );
  }
}
