import 'package:flutter/material.dart';

import 'package:flutter_learn/page/home_page.dart';

import 'package:flutter_learn/page/splash_page.dart';

void main() => runApp(new Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SplashPage(), // 闪屏页
      routes: <String, WidgetBuilder>{
        // 路由
        '/HomePage': (BuildContext context) => new HomePage()
      },
    );
  }
}
