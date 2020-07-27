import 'package:flutter/material.dart';
import './life_period/life_period.dart';
import './route_manage/route_manage.dart';
import './state_manage/state_manage.dart';
import './button_types/button_types.dart';
import './switch_checkbox/switch_checkbox.dart';
import './image_icon/image_icon.dart';
import './text_style/text_style.dart';
import './textfield_form/textfield_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        'named_route':(context)=>NamedRoute(),
        '生命周期':(context)=>LifePeriod(),
        '路由管理':(context)=>RouteManage(),
        '状态管理':(context)=>StateManage(),
        '按钮类型':(context)=>ButtonTypes(),
        '开关和复选框':(context)=>SwitchCheckbox(),
        '图片图标':(context)=>ImageAndIcon(),
        '文本样式':(context)=>TextAndStyle(),
        '输入框和表单':(context)=>TextFieldAndForm(),
      },
      home: Example(),
    );
  }
}

class Example extends StatelessWidget {
  final List<String> titles = ['生命周期', '路由管理', '状态管理','按钮类型','开关和复选框','图片图标','文本样式','输入框和表单'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 示例'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: titles.length,
          itemExtent: 50.0,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(titles[index]),
              onTap: () {
                Navigator.pushNamed(context,titles[index]);
              },
            );
          },
        ),
      ),
    );
  }
}