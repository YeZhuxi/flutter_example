import 'package:flutter/material.dart';

class SwitchCheckbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('开关和复选框'),
      ),
      body: Center(
        child: SwitchAndCheckbox(),
      ),
    );
  }
}

class SwitchAndCheckbox extends StatefulWidget {
  @override
  _SwitchAndCheckboxState createState() => new _SwitchAndCheckboxState();
}

class _SwitchAndCheckboxState extends State<SwitchAndCheckbox> {
  bool _switchSelected = false;
  bool _checkboxSelected = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          onChanged: (value) {
            setState(() {
              _checkboxSelected = value;
            });
          },
        )
      ],
    );
  }
}
