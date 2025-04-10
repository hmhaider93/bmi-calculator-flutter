import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  final String bmi;
  final String result;
  final String interpretation;

  const ResultsPage({
    required this.bmi,
    required this.result,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Result',
              style: kLableTextStyleLarge,
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    children: [
                      SizedBox(
                        height: 100.0,
                      ),
                      Text(
                        this.result,
                        style: kLableTextStyle,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        this.bmi,
                        style: kLableTextStyleLarge,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        this.interpretation,
                        style: kLableTextStyle,
                      ),
                    ],
                  ),
                  onPress: () {}),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: kBottomContainerHeight,
        color: kBottomBarColor,
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'RE-CALCULATE',
              style: kLableTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
