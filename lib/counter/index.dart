import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _onPressed() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('标题'),
        leading: Icon(Icons.add),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            color: Colors.white,
          ),
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.code_off,
                color: Colors.white,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'add',
        child: Icon(Icons.add),
      ),
      body: Center(child: Text('$_count')),
    );
  }
}
