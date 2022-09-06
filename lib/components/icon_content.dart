import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.iconUser, required this.iconName, required this.iconColor});

  final IconData iconUser;
  final String iconName;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // iconUser,
        Icon(
          iconUser,
          size: 100,
          color: iconColor,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          iconName,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
