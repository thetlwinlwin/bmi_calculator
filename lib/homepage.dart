import 'package:flutter/material.dart';
import 'package:i_am_rich/resultpage.dart';
import 'cards/bottom_card_content.dart';
import 'constants.dart';
import 'cards/reusablecard.dart';
import 'cards/top_row_icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculate_brain.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectGender;
  int _height = 160;
  int _weight = 60;
  int _age = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  flex: 1,
                  functioning: () {
                    setState(() {
                      selectGender = Gender.male;
                    });
                  },
                  colour: selectGender == Gender.male
                      ? kSelectedCotainerColor
                      : kActiveCardColor,
                  childWidget: CardChild(
                    iconDisplay: FontAwesomeIcons.mars,
                    labelText: 'Male',
                  ),
                ),
                ReusableCard(
                  flex: 1,
                  functioning: () {
                    setState(() {
                      selectGender = Gender.female;
                    });
                  },
                  colour: selectGender == Gender.female
                      ? kSelectedCotainerColor
                      : kActiveCardColor,
                  childWidget: CardChild(
                    iconDisplay: FontAwesomeIcons.venus,
                    labelText: 'Female',
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(
            flex: 1,
            colour: kActiveCardColor,
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  //the below textbaseline indicates the flutter to which part of a text should be based.
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      _height.round().toString(),
                      style: kHeightTextStyle,
                    ),
                    Text(
                      'cm',
                    ),
                  ],
                ),
                Slider(
                  value: _height.toDouble(),
                  min: 120,
                  max: 260,
                  onChanged: (double newValue) {
                    setState(() {
                      _height = newValue.round();
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  flex: 1,
                  childWidget: BottomCardChild(
                    label: 'Weight',
                    unit: 'kg',
                    subtractFunc: () {
                      setState(() {
                        if (_weight > 0) {
                          _weight--;
                        }
                      });
                    },
                    addFunc: () {
                      setState(() {
                        if (_weight < 450) {
                          _weight++;
                        }
                      });
                    },
                    quantity: _weight,
                  ),
                  colour: kActiveCardColor,
                ),
                ReusableCard(
                  flex: 1,
                  colour: kActiveCardColor,
                  childWidget: BottomCardChild(
                    label: 'Age',
                    unit: 'yrs',
                    subtractFunc: () {
                      setState(() {
                        if (_age > 0) {
                          _age--;
                        }
                      });
                    },
                    addFunc: () {
                      setState(() {
                        if (_age < 100) {
                          _age++;
                        }
                      });
                    },
                    quantity: _age,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              var args = CalculateBmi(height: _height, weight: _weight)
                  .outcomeResult();
              Navigator.pushNamed(
                context,
                '/result',
                arguments: args,
              );
            },
            child: Container(
              width: double.infinity,
              child: Center(
                child: Text(
                  'Evaluate',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              height: kBtmContainerHeight,
              color: kBtmContainerColor,
            ),
          ),
        ],
      ),
    );
  }
}
