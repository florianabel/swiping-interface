import 'package:flutter/widgets.dart';

class SwipeCard extends StatelessWidget {
  final String id;
  final String userName;
  final int userAge;
  final String userDescription;
  final String profileImageSrc;

  const SwipeCard({
    Key? key,
    required this.id,
    required this.userName,
    required this.userAge,
    required this.userDescription,
    required this.profileImageSrc,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              image: AssetImage(profileImageSrc),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}