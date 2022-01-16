import 'package:flutter/material.dart';
import '../constants.dart';

class CardChild extends StatelessWidget {
  final IconData iconDisplay;
  final String labelText;

  CardChild({@required this.iconDisplay, @required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconDisplay,
          size: kIconSize,
          color: Colors.teal,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          labelText,
        ),
      ],
    );
  }
}
