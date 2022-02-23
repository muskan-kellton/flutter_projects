import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  final Color? colour;
  final Widget? cardChild;
  
  Reusablecard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
