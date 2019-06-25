import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'YOUR RESULT',
                style: kResultHeaderTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveBgColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'NORMAL',
                      textAlign: TextAlign.center,
                      style: kResultTextStyle,
                    ),
                    Text(
                      '50.7',
                      style: kResultNumberTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'You have normal body weight. Good Job',
                      style: kResultCommentTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kButtonTextStyle,
                  ),
                ),
                color: kBottomBtnColor,
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            ),
          )
        ],
      ),
    );
  }
}
