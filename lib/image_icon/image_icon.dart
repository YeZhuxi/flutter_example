import 'package:flutter/material.dart';

class ImageAndIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图片图标'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/Fall.jpg'),
              width: 100.0,
            ),
            Image.asset(
              'images/Fall.jpg',
              width: 150.0,
            ),
            Image(
              image: NetworkImage(
                "https://pcdn.flutterchina.club/imgs/book.png",
              ),
              width: 200.0,
            ),
            Text(
              "\uE914\uE000\uE90D",
              style: TextStyle(
                fontFamily: "MaterialIcons",
                fontSize: 24.0,
                color: Colors.green,
              ),
            ),
            Icon(
              Icons.accessible,
              color: Colors.green,
            ),
            Icon(
              Icons.error,
              color: Colors.green,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.green,
            ),
            Icon(
              MyIcons.book,
              color: Colors.purple,
            ),
            Icon(
              MyIcons.wechat,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class MyIcons {
  static const IconData book =
      const IconData(0xe718, fontFamily: 'myIcon', matchTextDirection: true);

  static const IconData wechat =
      const IconData(0xe68b, fontFamily: 'myIcon', matchTextDirection: true);
}
