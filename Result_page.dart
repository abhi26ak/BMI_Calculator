import 'package:flutter/material.dart';
import '../constant.dart';
import 'file:///C:/Users/Abhishek%20Kanaujiya/AndroidStudioProjects/bmi-calculator-flutter/lib/components/Resuable_container.dart';
import 'package:bmi_calculator/components/button_button.dart';
class result_Page extends StatelessWidget {

  result_Page({@required this.interpretation,@required this.bmiResult,@required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'your result',
                style: KTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable_container(
              colour: KContainercolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: KresultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBMITextstyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: KBodyTextstyle,
                  )
                ],
              ),
            ),
          ),
        ButtomButton(buttonTitle: 'RE-CALCULATE',onTap: (){
          Navigator.pop(context);
        },),
        ],
      ),
    );
  }
}
