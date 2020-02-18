import 'dart:ui';

import 'package:flutter/material.dart';

final ThemeData mainTheme = ThemeData.dark().copyWith(
  accentColor: kAccentColor,
  cardColor: kAccentColor,
  textTheme: TextTheme(title: TextStyle()),
);


// color constants : change these colors to change all app look 

const Color kBackgroundColor = Color(0xff233a66);
const Color kAccentColor = Color(0xfffed691);
const Color kTextColor = Color(0xffeeeddf);

const Gradient kBackgroundGradient = RadialGradient(
  center: Alignment(0.7, -0.4), // near the top right
  radius: 1,
  colors: [Color(0xff3c5177), kBackgroundColor],
  stops: [.2, 1.0],
);
