import 'package:flutter/material.dart';
import 'package:flutter_learn/page/other_page.dart';
import 'package:flutter_learn/page/english_words.dart';

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
                  backgroundImage: new NetworkImage(
                    "https://www.gravatar.com/avatar/default.jpg") // 设置头像,
                ),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => print('You click me!'),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                      "https://www.gravatar.com/avatar/default.jpg") // 设置头像,
                  ),
                ),
                new GestureDetector(
                  onTap: () => print('You click me!'),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                      "https://www.gravatar.com/avatar/default.jpg") // 设置头像,
                  ),
                ),
                new GestureDetector(
                  onTap: () => print('You click me!'),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                      "https://www.gravatar.com/avatar/default.jpg") // 设置头像,
                  ),
                ),
              ],
            ),
            new ListTile(
              title: new Text("open the first page"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
//                Navigator.of(context).pop(); //点击后收起侧边栏
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new OtherPage('First Page'))); //进入OtherPage页面，传入参数First Page
              },
            ),
            new ListTile(
              title: new Text("open the second page"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
//                  Navigator.of(context).pop();
                Navigator.push(context, new OtherPageRoute("second page"));
              },
            ),
            new ListTile(
              title: new Text("open the english words page"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(context, new EnglishWordsPageRoute());
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
