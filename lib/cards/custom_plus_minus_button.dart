import 'package:flutter/material.dart';

class CustomRoundBtn extends StatelessWidget {
  final Widget icon;
  final Function onPressed;
  CustomRoundBtn({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.grey,
      child: icon,
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints(
        minHeight: 50,
        minWidth: 50,
      ),
    );
  }
}
