import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color.fromARGB(255, 1, 16, 39);
const bottomBarColor = Colors.red;

enum Gender {
  male,
  female,
  undefined
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  late Gender selectedGender = Gender.undefined; 

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
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = selectedGender == Gender.male ? Gender.undefined : Gender.male; 
                        });
                      },
                      colour: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = selectedGender == Gender.female ? Gender.undefined : Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    onPress: () {
                      
                    },
                      colour: Colors.white, cardChild: Icon(Icons.alarm))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    onPress: () {
                      
                    },
                      colour: Colors.white, cardChild: Icon(Icons.alarm)),
                  ReusableCard(
                    onPress: () {
                      
                    },
                      colour: Colors.white, cardChild: Icon(Icons.alarm))
                ],
              ),
            ),
          ],
        ));
  }
}

