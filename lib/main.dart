import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Switch'),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: ClickGood(),
        ),
      ),
    );
  }
}

class ClickGood extends StatefulWidget {
  @override
  _ClickGoodState createState() => _ClickGoodState();
}

class _ClickGoodState extends State<ClickGood> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _handleTap,
        child: Container(
          child: Column(children: <Widget>[
            Container(
              child: Center(
                child: new Icon(
                  Icons.power_settings_new,
                  color: _active ? Colors.orange[700] : Colors.grey[500],
                  size: 100.0,
                ),
              ),
              width: 200.0,
              height: 200.0,
            ),
            Container(
              child: Center(
                child: Text(
                  _active ? 'On' : 'Off',
                  style: TextStyle(fontSize: 32.0, color: Colors.white),
                ),
              ),
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: _active ? Colors.orange[700] : Colors.grey[600],
              ),
            ),
          ]),
        ));
  }
}
