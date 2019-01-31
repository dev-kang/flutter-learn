import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override

  _HomePageState createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext text) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("开发tabBar"), backgroundColor: Colors.red,), // 头部标题的tabBar
      drawer: new Drawer(), // 头部标题栏 左侧图标，
      body: new Center(
        child: new Text("HomePage: hello world！", style: new TextStyle(fontSize: 20),),
      )

    );
  }
}