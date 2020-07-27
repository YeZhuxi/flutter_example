import 'package:flutter/material.dart';

class StateManage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('状态管理'),
      ),
      body: Center(
        child: ParentWidget(),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => new _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new ChildWidget(
        active: _active,
        onChanged: _handleTapBoxChanged,
      ),
    );
  } //build

}

class ChildWidget extends StatefulWidget {
  ChildWidget({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  _ChildWidgetState createState() => new _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  bool _highlight = false;

  void _handleTapDown(tapDownDetails) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(tapUpDetails) {
    setState(() {
      _highlight = false;
    });
  } //_handleTapUp

  void _handleTap() {
    widget.onChanged(!widget.active);
  } //_handleTap

  void _handleTapCancel() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: new Text(
            widget.active ? 'active' : "Inactive",
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? new Border.all(color: Colors.teal[700], width: 10.0)
              : null,
        ),
      ),
    );
  } //build
}
