import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';

class BottomNavTheme {
  static BottomNavigationBarThemeData light = BottomNavigationBarThemeData(
    backgroundColor: TColors.primaryColor,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.black,
    selectedIconTheme: IconThemeData(size: 28),
    unselectedIconTheme: IconThemeData(size: 22),
    showSelectedLabels: true,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
    elevation: 10,
  );

  static BottomNavigationBarThemeData dark = BottomNavigationBarThemeData(
    backgroundColor: TColors.primaryColor,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
    selectedIconTheme: IconThemeData(size: 28),
    unselectedIconTheme: IconThemeData(size: 22),
    showSelectedLabels: true,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
    elevation: 10,
  );
}
