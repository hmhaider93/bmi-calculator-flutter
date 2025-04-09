import 'input_page.dart';
import 'package:flutter/material.dart';
// import 'result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 1, 16, 39),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 1, 16, 39)
        )
      ),
      // home: InputPage(),
      routes: {
        '/': (context) => InputPage(),
        // '/result': (context) => ResultPage(
        //   bmi: ModalRoute.of(context)!.settings.arguments as double,
        // ),
      },
    );
  }
}

