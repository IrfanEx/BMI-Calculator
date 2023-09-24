import 'package:flutter/material.dart';
import 'constant.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  RoundIconButton({@required this.icon, @required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}