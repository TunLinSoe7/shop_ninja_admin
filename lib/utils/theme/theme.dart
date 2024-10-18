import 'package:flutter/material.dart';
import 'package:shop_hub_admin/utils/constants/color.dart';

var lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: kBackgroundColor,
    primary: kPrimaryColor,
    onBackground: kOnBackgroundColor,
    primaryContainer: kPrimaryContainerColor,
    onPrimaryContainer: kOnPrimaryContainerColor
  ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: kOnBackgroundColor
      ),
      headlineSmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: kOnBackgroundColor
      ),
      bodyMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: kOnBackgroundColor
      ),
      bodySmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: kOnBackgroundColor
      ),
      labelMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: kOnPrimaryContainerColor
      ),
    ),
);
var darkTheme = ThemeData();