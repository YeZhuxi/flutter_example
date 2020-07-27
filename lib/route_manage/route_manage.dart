import 'package:flutter/material.dart';

class RouteManage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由管理'),
      ),
      body: Center(
        child: HomeRoute(),
      ),
    );
  }
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () async {
            var result = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return TipRoute(
                text: "i am a tip",
              );
            }));
            print("上个路由返回值: $result");
          },
          child: Text("等待路由传值"),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'named_route');
          },
          child: Text('打开命名路由'),
        )
      ],
    )));
  }
}

class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tip路由'),
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(text),
                RaisedButton(
                  onPressed: () => Navigator.pop(context, "returned value"),
                  child: Text("return"),
                )
              ],
            ),
          ),
        ));
  }
}

class NamedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('命名路由'),
      ),
      body: Center(
        child: Text('这是一个命名路由'),
      ),
    );
  }
}
