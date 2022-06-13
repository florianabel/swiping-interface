import 'package:flutter/material.dart';

import 'swipe_card.dart';

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
                SwipeCard(
                  id: '1111',
                  userName: 'John',
                  userAge: 22,
                  userDescription: "Love bouldering and climbing holidays.",
                  profileImageSrc: 'assets/profilepictures/profile_1.jpg',
                ),
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