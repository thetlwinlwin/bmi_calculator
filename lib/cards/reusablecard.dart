import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget childWidget;
  final Function functioning;
  final int flex;

  ReusableCard(
      {@required this.colour,
      @required this.childWidget,
      this.functioning,
      this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: GestureDetector(
        child: Container(
          child: childWidget,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onTap: functioning,
      ),
    );
  }
}
