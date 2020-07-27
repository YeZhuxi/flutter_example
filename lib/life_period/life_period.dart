import 'package:flutter/material.dart';

class LifePeriod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('生命周期'),
      ),
      body: Center(
        child: Period(),
      ),
    );
  }
}

class Period extends StatefulWidget {
  final int initValue;

  Period({this.initValue = 0});

  @override
  PeriodState createState() => new PeriodState();
}

class PeriodState extends State<Period> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print("initState");
  } //initState

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('build');
    return Scaffold(
        body: Center(
      child: FlatButton(
        child: Text("$_counter"),
        onPressed: () => setState(() => ++_counter),
      ),
    ));
  } //build

  @override
  void didUpdateWidget(Period oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  } //didUpdateWidget

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  } //deactivate

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  } //dispose

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  } //reassemble

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  } //disChangeDependencies
}
