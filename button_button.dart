import 'package:flutter/material.dart';
import '../constant.dart';
class ButtomButton extends StatelessWidget {
  ButtomButton({this.buttonTitle,this.onTap});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonTitle,
            style: KlargeButtonStyle,
          ),
        ),
        color: KBottomconntcolor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 18.0),
        height: KBottomcontainerheight,
        width: double.infinity,
      ),
    );
  }
}