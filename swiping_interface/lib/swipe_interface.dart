import 'package:flutter/material.dart';
import 'swipe_card.dart';

class SwipeInterface extends StatefulWidget {
  const SwipeInterface({super.key});

  @override
  State<StatefulWidget> createState() => _SwipeInterfaceState();
}

class _SwipeInterfaceState extends State<SwipeInterface> {
  _SwipeInterfaceState();

  @override
  Widget build(BuildContext context) {
    return SwipeCard(
      id: '1111',
      userName: 'John',
      userAge: 22,
      userDescription: "Love bouldering and climbing holidays.",
      profileImageSrc: 'assets/profilepictures/profile_1.jpg',
    );
  }
}