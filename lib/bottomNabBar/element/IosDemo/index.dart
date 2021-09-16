import 'package:flutter/material.dart';
import 'dart:math' as math;

// class IosDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       width: 200.0,
//       height: 200.0,
//       child: Text('IosDemo'),
//     );
//   }
// }

// class IosDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(20),
//       child: Text('IosDemo'),
//     );
//   }
// }

class IosDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: double.infinity,
      margin: EdgeInsets.all(50),
      color: Colors.grey,
      child: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.pink,
          ),
          Container(
            // width: 50,
            // height: 50,
            color: Colors.orange,
          ),
          Positioned(
            top: 10.0,
            bottom: 10.0,
            left: 10.0,
            right: 10.0,
            child: Container(
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
