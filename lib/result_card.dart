import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.getText, @required this.interpretation});

  final String bmiResult;
  final String getText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Text('Your Result:', style: kTitleText),
          ),
          Expanded(flex: 5, child: ReusableCard(color: kActiveCardColor, cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(getText, style: kWeightTitle,),
              Text(bmiResult, style: kFinalResult,),
              Text(interpretation, style: kBottomText,),
            ],
          ),),),
          BottomButton(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return InputPage();
            }),);
          }, text: 'RE-CALCULATE',),
        ],
      ),
    );
  }
}
