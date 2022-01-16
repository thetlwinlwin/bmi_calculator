import 'package:flutter/material.dart';

//the reason adding 'k' in front of variable names is to search them quickly in other dart files.
// 'k' stands for constant.

const Color kActiveCardColor = Color(0xFF1D1E33);
const Color kBtmContainerColor = Color(0xFFEB1555);
const double kBtmContainerHeight = 60.0;
const Color kSelectedCotainerColor = Color(0xFF111328);
const int kThumbOpacity = 40;
const int kTrackOpacity = 62;

const double kIconSize = 70;
const TextStyle kHeightTextStyle = TextStyle(
  fontSize: 60,
  fontWeight: FontWeight.bold,
);

//to check the default values. Click on the SliderThemData, press ctrl and click again.

ThemeData kThemeData = ThemeData.dark().copyWith(
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
    ),
  ),
  sliderTheme: SliderThemeData(
    thumbShape: RoundSliderThumbShape(
      enabledThumbRadius: 15,
    ),
    activeTrackColor: Colors.white,
    inactiveTrackColor: Color(0xffbb86fc).withAlpha(kTrackOpacity),
    //the default will add 2px more to the active track.
    //that's why we use just rectangularsliderTrackShape.
    trackShape: RectangularSliderTrackShape(),
    trackHeight: 2,
    thumbColor: kBtmContainerColor,
    overlayColor: kBtmContainerColor.withAlpha(kThumbOpacity),
  ),
  backgroundColor: Colors.grey,
  textTheme: TextTheme(
    bodyText2: TextStyle(
      color: Colors.teal,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
  ),
);
