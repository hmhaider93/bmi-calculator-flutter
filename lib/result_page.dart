import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  ResultPage({required this.bmi});

  @override
  Widget build(BuildContext context) {
    String resultText;
    if (bmi >= 25) {
      resultText = 'Overweight';
    } else if (bmi > 18.5) {
      resultText = 'Normal';
    } else {
      resultText = 'Underweight';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI is:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              bmi.toStringAsFixed(1),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              resultText,
              style: TextStyle(fontSize: 24, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
