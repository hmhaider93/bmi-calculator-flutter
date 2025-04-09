import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild, required this.onPress});

  final Color colour;
  final Widget cardChild;
  final GestureTapCallback onPress; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            // color: Color(0xFF1D1B33),
            color: colour,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: cardChild,
      ),
    );
  }
}