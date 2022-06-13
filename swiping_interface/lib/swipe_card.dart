import 'package:flutter/widgets.dart';

class SwipeCard extends StatelessWidget {
  const SwipeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              image: AssetImage('assets/profilepictures/profile_1.jpg'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}