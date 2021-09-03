import 'package:flutter/material.dart';

const TextStyle kAppBarTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 23.0,
);

final ThemeData kDefaultStyle = ThemeData(
  fontFamily: 'KaushanScript',
  scaffoldBackgroundColor: Colors.orange[100],
  cardColor: Colors.orange[200],
);

final ThemeData kChinaStyle = ThemeData(
  textTheme: TextTheme(
    bodyText2: TextStyle(color: Colors.yellow),
  ),
  fontFamily: 'KaushanScript',
  scaffoldBackgroundColor: Color(0xffe32227),
  cardColor: Colors.red[300],
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: Colors.yellow),
  ),
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.yellow),
  ),
);

final ThemeData kKoreaStyle = ThemeData(
  textTheme: TextTheme(
    bodyText2: TextStyle(color: Colors.black),
  ),
  fontFamily: 'KaushanScript',
  scaffoldBackgroundColor: Colors.white,
  cardColor: Colors.blue,
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: Colors.black),
  ),
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
  ),
);

final ThemeData kJapanStyle = ThemeData(
  textTheme: TextTheme(
    bodyText2: TextStyle(color: Colors.red),
  ),
  fontFamily: 'KaushanScript',
  scaffoldBackgroundColor: Color(0xffFFAEBC),
  cardColor: Color(0xffFFA384),
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: Colors.red),
  ),
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.red),
  ),
);