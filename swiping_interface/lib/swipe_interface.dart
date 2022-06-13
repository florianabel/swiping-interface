import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'profile.dart';
import 'swipe_card.dart';

class SwipeInterface extends StatefulWidget {
  const SwipeInterface({super.key});

  @override
  State<StatefulWidget> createState() => _SwipeInterfaceState();
}

class _SwipeInterfaceState extends State<SwipeInterface> {
  List<Profile> profiles = <Profile>[
    Profile(
        id: "222",
        userName: "Placeholder 1",
        userAge: 99,
        userDescription: "Placeholder 1 user description",
        profileImageSrc: 'assets/profilepictures/placeholder.jpg'),
    Profile(
        id: "333",
        userName: "Placeholder 2",
        userAge: 99,
        userDescription: "Placeholder 2 user description",
        profileImageSrc: 'assets/profilepictures/placeholder.jpg'),
  ];

  int stackCounter = 0;

  loadJsonData() async {
    String jsonData = await rootBundle.loadString('assets/json/profiles.json');
    setState(() {
      profiles = json
          .decode(jsonData)
          .map<Profile>((dataPoint) => Profile.fromJson(dataPoint))
          .toList();
    });
  }

  _SwipeInterfaceState() {
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) => Draggable(
          feedback: SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: SwipeCard(
              id: profiles[stackCounter].id,
              userName: profiles[stackCounter].userName,
              userAge: profiles[stackCounter].userAge,
              userDescription: profiles[stackCounter].userDescription,
              profileImageSrc: profiles[stackCounter].profileImageSrc,
            ),
          ),
          childWhenDragging: SwipeCard(
            id: profiles[stackCounter + 1].id,
            userName: profiles[stackCounter + 1].userName,
            userAge: profiles[stackCounter + 1].userAge,
            userDescription: profiles[stackCounter + 1].userDescription,
            profileImageSrc: profiles[stackCounter + 1].profileImageSrc,
          ),
          child: SwipeCard(
            id: profiles[stackCounter].id,
            userName: profiles[stackCounter].userName,
            userAge: profiles[stackCounter].userAge,
            userDescription: profiles[stackCounter].userDescription,
            profileImageSrc: profiles[stackCounter].profileImageSrc,
          ),
        ),
      ),
    );
  }
}
