import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.buttonTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            this.buttonTitle,
            style: kButtonTextStyle,
          ),
        ),
        color: kBottomBtnColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
