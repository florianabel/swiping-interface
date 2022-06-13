import 'package:flutter/material.dart';

import 'swipe_interface.dart';

void main() => runApp(const SwipeInterfaceApp());

class SwipeInterfaceApp extends StatelessWidget {
  const SwipeInterfaceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 60.0,
                    alignment: Alignment.bottomCenter,
                    child: null),
                SwipeInterface(),
                Container(
                    height: 60.0,
                    alignment: Alignment.bottomCenter,
                    child: null),
              ],
            ),
          ),
        ),
      ),
    );
  }
}