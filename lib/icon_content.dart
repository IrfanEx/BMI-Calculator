import 'package:flutter/material.dart';
import 'constant.dart';


class CardContains extends StatelessWidget {
  const CardContains({@required this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}