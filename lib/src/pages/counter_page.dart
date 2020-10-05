import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _primaryTextSize = new TextStyle(fontSize: 40.0);
  final _secondaryText = new TextStyle(fontSize: 20.0);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tasbeeh'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Allahuakbar',
                style: _primaryTextSize,
              ),
              Text('(Allah es el mas grande)', style: _secondaryText),
              Text(
                '$_counter',
                style: _primaryTextSize,
              )
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(onPressed: _renew, child: Icon(Icons.autorenew)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _add, child: Icon(Icons.add)),
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _renew() {
    setState(() => _counter = 0);
  }
}
