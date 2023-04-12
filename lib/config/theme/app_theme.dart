// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qoute1/core/utils/app_colors.dart';
import 'package:qoute1/core/utils/app_string.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: AppColor.primary,
  primaryColor: AppColor.primary,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: AppString.fontFamily,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    elevation: 20.0,
    selectedItemColor: AppColor.primary,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 17.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color:Colors.white,
      fontFamily: 'Bassant',
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 14.0,
      color: Colors.grey,
    ),
    labelMedium: TextStyle(
      color: Colors.grey,
      fontSize: 13.0,
    ),
    labelLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      color: AppColor.primary,
      fontWeight: FontWeight.w900,
      fontFamily: 'Bassant',
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      fontFamily: 'Bassant',
    ),

  ),
  drawerTheme: DrawerThemeData(
    backgroundColor: Colors.white.withOpacity(.5),
    shadowColor: AppColor.primary,
  ),
  listTileTheme: ListTileThemeData(
    iconColor: Colors.white,
    style: ListTileStyle.drawer,
    textColor: Colors.white,
    selectedColor: AppColor.primary,
    selectedTileColor: AppColor.primary,
    tileColor:AppColor.primary.withOpacity(.5),


  ),
  iconTheme: IconThemeData(
    color: Colors.grey,
  ),
  colorScheme: ThemeData().colorScheme.copyWith(
    primary: AppColor.primary,
    secondary: AppColor.primary,

  ),

);

ThemeData darkTheme = ThemeData(
  primarySwatch: AppColor.primary,
  primaryColor: AppColor.primary,
  scaffoldBackgroundColor: Colors.grey.shade800.withOpacity(.5),
  fontFamily: AppString.fontFamily,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: Colors.black12,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    elevation: 20.0,
    selectedItemColor: AppColor.primary[200],
    unselectedItemColor: Colors.white,
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 17.0,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      color: Colors.grey,
    ),
    bodyLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
      fontFamily: 'Bassant',
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 14.0,
      color: Colors.grey[200],
    ),
    labelMedium: TextStyle(
      color: Colors.white,
      fontSize: 13.0,
    ),
    labelLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
    ),
    labelSmall:TextStyle(
      fontSize: 14.0,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      color: AppColor.primary,
      fontWeight: FontWeight.w900,
      fontFamily: 'Bassant',
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      fontFamily: 'Bassant',
    ),

  ),
  drawerTheme: DrawerThemeData(
    backgroundColor: Colors.black12.withOpacity(0.5),
    shadowColor: AppColor.primary[900],
  ),
  listTileTheme: ListTileThemeData(
    iconColor: Colors.white,
    style: ListTileStyle.drawer,
    textColor: Colors.white,
    selectedColor: AppColor.primary,
    selectedTileColor: AppColor.primary,
    tileColor: AppColor.primary.withOpacity(.5),

  ),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  secondaryHeaderColor:Colors.white,
  colorScheme: ThemeData().colorScheme.copyWith(
    primary: AppColor.primary,
    secondary: Colors.white,

  ),



);

