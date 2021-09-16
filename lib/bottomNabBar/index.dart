import 'package:flutter/material.dart';
import './element/An/index.dart';
import './element/FlDemos/index.dart';
import './element/IosDemo/index.dart';

class BottomNaBar extends StatefulWidget {
  List<Widget> Demos = [AnDemo(), IosDemo(), FlDemos()];
  @override
  _BottomNaBarState createState() => _BottomNaBarState();
}

class _BottomNaBarState extends State<BottomNaBar>
    with SingleTickerProviderStateMixin {
  List tab = ['an', 'ios', 'flutter'];
  int _index = 0;
  late TabController _controller;

  @override
  void initState() {
    _controller =
        TabController(initialIndex: _index, length: tab.length, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_left),
        title: Text('首页'),
        centerTitle: true,
        // elevation: 100,
        bottom: TabBar(
          controller: _controller,
          tabs: tab
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
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
      // body: ContainerDemo(
      //   bodyText: TabBarView(
      //     children: widget.Demos,
      //     controller: _controller,
      //   ),
      // ),
      body: TabBarView(
        children: widget.Demos,
        controller: _controller,
      ),
    );
  }
}

// body数据
class ContainerDemo extends StatelessWidget {
  var bodyText;

  ContainerDemo({Key? key, @required bodyText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: bodyText,
    );
  }
}

// 底部导航栏
class BottomNaDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.lightBlue,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shop),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.golf_course),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
