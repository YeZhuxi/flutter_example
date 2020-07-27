import 'package:flutter/material.dart';

class ButtonTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮类型'),
      ),
      body: Center(
        child: ButtonWidget(),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('RaisedButton'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('FlatButton'),
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            highlightColor: Colors.teal,
            splashColor: Colors.cyan,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
          OutlineButton(
            child: Text("OutlineButton"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          ),
          RaisedButton.icon(
            icon: Icon(Icons.send),
            label: Text('RaisedButton.icon'),
            onPressed: () {},
          ),
          FlatButton.icon(
            icon: Icon(Icons.info),
            label: Text("FlatButton.icon"),
            onPressed: () {},
          ),
          OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text("OutlineButton.icon"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
