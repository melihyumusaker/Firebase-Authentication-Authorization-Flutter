import 'package:flutter/material.dart';
import 'package:project/src/constants/color.dart';
import 'package:project/src/constants/size.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  // Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape:const RoundedRectangleBorder(),
                            foregroundColor: tWhiteColor,
                            backgroundColor: tSecondaryColor,
                            side:const BorderSide(color: tSecondaryColor),
                            padding:
                            const    EdgeInsets.symmetric(vertical: tButtonHeight))
                                
  );

  // Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape:const RoundedRectangleBorder(),
                            foregroundColor: tSecondaryColor,
                            backgroundColor: tWhiteColor,
                            side:const BorderSide(color: tSecondaryColor),
                            padding:
                              const  EdgeInsets.symmetric(vertical: tButtonHeight))

  );
}
