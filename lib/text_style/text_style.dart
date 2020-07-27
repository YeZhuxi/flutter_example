import 'package:flutter/material.dart';

class TextAndStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本样式'),
      ),
      body: Center(
        child: TextStyleType(),
      ),
    );
  }
}

class TextStyleType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Hello, world",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Raleway",
              background: new Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          Text(
            "Hello, I am Jack." * 6,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Hello, world",
            textScaleFactor: 1.5,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
              text: "Home => ",
            ),
            TextSpan(
              text: "https://flutterchina.club",
              style: TextStyle(
                color: Colors.blue,
              ),
            )
          ])),
          DefaultTextStyle(
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Hello, world'),
                Text('I am Jack'),
                Text(
                  'I am Jack',
                  style: TextStyle(
                    inherit: false,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
