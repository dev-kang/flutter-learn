import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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


class OtherPageRoute extends CupertinoPageRoute {
  
  final String pageText;
  
  OtherPageRoute(this.pageText)
    : super(builder: (BuildContext context) => new OtherPage(pageText));
  
  
  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation) {
      return FadeTransition(opacity: animation, child: new OtherPage(pageText),);
  }
}