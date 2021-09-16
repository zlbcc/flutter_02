import 'package:flutter/material.dart';

class AnDemo extends StatefulWidget {
  @override
  _AnDemoState createState() => _AnDemoState();
}

class _AnDemoState extends State<AnDemo> {
  int count = 0;

  void _onAdd() {
    setState(() {
      count++;
    });
  }

  void _onSub() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(onPressed: _onAdd, icon: Icon(Icons.add)),
            Text('$count'),
            IconButton(
                onPressed: _onSub, icon: Icon(Icons.subdirectory_arrow_left)),
          ],
        ),
      ],
    );
  }
}
