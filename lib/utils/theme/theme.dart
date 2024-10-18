import 'package:flutter/material.dart';
import 'package:shop_hub_admin/utils/constants/color.dart';

var lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: kBackgroundColor,
    primary: kPrimaryColor,
    onSurface: kOnBackgroundColor,
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
var darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
      surface: kDarkBgColor,
      primary: kDarkPrimaryColor,
      onSurface: kDarkOnBackGroundColor,
      primaryContainer: kDarkPrimaryColor,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: kDarkSecondaryColor,
    surfaceTintColor: kDarkSecondaryColor
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: kDarkOnBackGroundColor
    ),
    headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: kDarkOnBackGroundColor
    ),
    bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: kDarkOnBackGroundColor
    ),
    bodySmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: kDarkOnBackGroundColor
    ),
    labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: kOnPrimaryContainerColor
    ),
  ),
);