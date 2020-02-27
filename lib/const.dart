import 'dart:ui';

import 'package:flutter/material.dart';

final ThemeData kMainTheme = ThemeData.dark().copyWith(
  accentColor: kAccentColor,
  cardColor: kAccentColor,
  textTheme: TextTheme(
    body1: TextStyle(fontFamily: 'Bebas Neue', fontSize: 22, letterSpacing: 4),
    body2: TextStyle(
      fontFamily: 'Bebas Neue',
      fontSize: 18,
    ),
    display1: TextStyle(
      fontSize: 25.0,
      letterSpacing: 2.0,
      fontWeight: FontWeight.w900,
      color: kBackgroundColor,
    ),
    display2: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        letterSpacing: 2.0,
        color: kAccentDarkColor),
        caption: TextStyle(fontSize: 14.0 ,fontWeight: FontWeight.w600, color: kAccentDarkColor ),
        display3: TextStyle(fontSize:14.0 , letterSpacing: 2.0, color:Colors.white),
        display4: TextStyle(fontSize:18.0 , letterSpacing: 2.0, color:Colors.white , fontWeight: FontWeight.w700),
    title:
        TextStyle(fontWeight: FontWeight.w500, fontSize: 25, letterSpacing: 5),
    subtitle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      letterSpacing: 3,
    ),
    overline: TextStyle(fontSize: 12, letterSpacing: 2.0, color: kAccentColor),
    subhead: TextStyle(fontSize:25.0 ,color:kAccentColor ,fontWeight:FontWeight.bold)
  ),
);

// color constants : change these colors to change all app look

const Color kBackgroundColor = Color(0xff233a66);
const Color kAccentColor = Color(0xfffed691);
const Color kTextColor = Color(0xffeeeddf);
const Color kAccentDarkColor = Color(0xffa37e56);

const Gradient kBackgroundGradient = RadialGradient(
  center: Alignment(0.7, -0.4), // near the top right
  radius: 1,
  colors: [Color(0xff3c5177), kBackgroundColor],
  stops: [.2, 1.0],
);
