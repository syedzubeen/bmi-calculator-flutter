import 'package:bmi_calculator/reusable_dart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/icon_content.dart';

const bottomContainerHeight = 70.0;
const activeCardColour = Color(0xFF1D1F33);
const inactiveCardColour = Color(0xFF1A237E);
const bottomContainerColor = Colors.pinkAccent;

enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child : GestureDetector(
                  onTap: (){
                        setState(() {
                         selectedGender=Gender.male;
                        });
                  },
                child: ReusableCard(
                  colour: selectedGender==Gender.male?activeCardColour:inactiveCardColour,
                  cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE'),
                ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender=Gender.female;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender==Gender.female?activeCardColour:inactiveCardColour,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus,label: 'FEMALE'),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}




