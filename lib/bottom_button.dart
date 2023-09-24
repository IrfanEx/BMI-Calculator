import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(text, style: kBiggerText,),),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomCardColor,
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}