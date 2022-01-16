import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import 'custom_plus_minus_button.dart';

class BottomCardChild extends StatelessWidget {
  final String label;
  final String unit;
  final int quantity;
  final Function subtractFunc;
  final Function addFunc;

  BottomCardChild(
      {this.label, this.unit, this.quantity, this.subtractFunc, this.addFunc});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              quantity.toString(),
              style: kHeightTextStyle,
            ),
            Text(unit),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRoundBtn(
              icon: Icon(
                FontAwesomeIcons.minus,
                color: Colors.teal,
                size: 30,
              ),
              onPressed: subtractFunc,
            ),
            SizedBox(
              width: 20,
            ),
            CustomRoundBtn(
              icon: Icon(
                FontAwesomeIcons.plus,
                color: Colors.teal,
                size: 30,
              ),
              onPressed: addFunc,
            ),
          ],
        ),
      ],
    );
  }
}
