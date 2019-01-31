import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  
  final String pageText;

  OtherPage(this.pageText);    //构造函数，获取参数
  
  
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("a child page"),
      ),
      body: new Center(
        child: new Text(pageText),
      ),
    );
  }
}
