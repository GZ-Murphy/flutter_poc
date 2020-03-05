import 'package:flutter/material.dart';
import './routers.dart';

void main() => runApp(POCApp());

class POCApp extends StatelessWidget {
  // This widget is the root of your application.

  static initRoutes() {
    
    return routerMap;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter POC',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
    initialRoute: '/',
    routes: POCApp.initRoutes(),
    );
  }

}
