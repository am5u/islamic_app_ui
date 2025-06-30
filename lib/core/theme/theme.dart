
import 'package:flutter/material.dart';

import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/theme/wedgits_theme/bottom_sheet_theme.dart';
import 'package:islamicapp_ui/core/theme/wedgits_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightAppTheme = ThemeData(
 useMaterial3: true,
 bottomNavigationBarTheme: BottomNavTheme.light,

 
 

fontFamily:'Janna-LT' ,
 primaryColor: TColors.primaryColor,
 textTheme:TTextTheme.lightTextThem,
 );

  static ThemeData darkAppTheme = ThemeData(
bottomNavigationBarTheme: BottomNavTheme.dark,
 primaryColor: TColors.primaryColor,
 textTheme:TTextTheme.lightTextThem,
 fontFamily:'Janna-LT',



  );
}
