import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("开发tabBar"),
          backgroundColor: Colors.red,
        ),
        // 头部标题的tabBar
        // 侧边栏实现
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                decoration: new BoxDecoration(color: Colors.blue),
                accountName: new Text('devKang'),
                accountEmail: new Text("cn.devkang@gmail.com"),
                currentAccountPicture: new GestureDetector(
                  onTap: () => print('You click me!'),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage("https://www.gravatar.com/avatar/default.jpg") // 设置头像,
                  ),
                ),
                otherAccountsPictures: <Widget>[
                  new GestureDetector(
                    onTap: () => print('You click me!'),
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage("https://www.gravatar.com/avatar/default.jpg") // 设置头像,
                    ),
                  ),

                  new GestureDetector(
                    onTap: () => print('You click me!'),
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage("https://www.gravatar.com/avatar/default.jpg") // 设置头像,
                    ),
                  ),

                  new GestureDetector(
                    onTap: () => print('You click me!'),
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage("https://www.gravatar.com/avatar/default.jpg") // 设置头像,
                    ),
                  ),
                ],
              ),
              
              new ListTile(
                title: new Text("the first function"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pop;
                },
              ),
              
              new ListTile(
                title: new Text("the second function"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pop;
                },
              ),
              
            ],
          ),
        ),
        // 头部标题栏 左侧图标，
        body: new Center(
          child: new Text(
            "HomePage: hello world！",
            style: new TextStyle(fontSize: 20),
          ),
        ));
  }
}
