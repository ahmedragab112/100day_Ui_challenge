import 'package:flutter/material.dart';

import 'constants/colors.dart';


class MyTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorPallit.backGroundColor,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white, 
        fontSize: 50, fontWeight: FontWeight.bold, 
      ), 
      bodyMedium: TextStyle(
        color: Colors.white, 
        fontSize: 20, fontWeight: FontWeight.w500, 
      ),  
      bodySmall: TextStyle(
        color: Colors.white, 
        fontSize: 15, fontWeight: FontWeight.w300, 
      ), 
    )
  );
}
