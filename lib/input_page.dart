import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomBarColor = Colors.red;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        bottomNavigationBar: BottomAppBar(
          color: bottomBarColor,
          child: Center(child: Text('CALCULATE', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),)),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars, text: 'MALE'),
                  ),
                  ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                      colour: Colors.white, cardChild: Icon(Icons.alarm))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                      colour: Colors.white, cardChild: Icon(Icons.alarm)),
                  ReusableCard(
                      colour: Colors.white, cardChild: Icon(Icons.alarm))
                ],
              ),
            ),
          ],
        ));
  }
}

