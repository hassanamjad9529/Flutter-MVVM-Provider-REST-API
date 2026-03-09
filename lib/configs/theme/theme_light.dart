import 'package:flutter/material.dart';
import 'package:testt/configs/color/color.dart';
import 'theme_text.dart';

class Themelight {
  Themelight._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteSccafold,
    appBarTheme: appbarTheme,
    textTheme: Themetext.textTheme,
    useMaterial3: true,
    elevatedButtonTheme: elevatedbuttontheme,
    bottomSheetTheme: bottomSheetTheme,
    checkboxTheme: checkboxTheme, // Add checkbox theme
  );

  static AppBarTheme appbarTheme = const AppBarTheme(
    backgroundColor: AppColors.whiteSccafold,
    titleTextStyle: TextStyle(
      color: AppColors.black,
      fontSize: 16,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
    ),
  );

  static ElevatedButtonThemeData elevatedbuttontheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      minimumSize: const Size(327.0, 56.0),
    ),
  );

  static BottomSheetThemeData bottomSheetTheme = const BottomSheetThemeData(
    backgroundColor: AppColors.whiteSccafold,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
    ),
    elevation: 8.0,
    modalElevation: 8.0,
    modalBackgroundColor: AppColors.whiteSccafold,
  );

  // Checkbox Theme
  static CheckboxThemeData checkboxTheme = CheckboxThemeData(
    
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4), // Rounded edges
    ),
    side: const BorderSide(
      color: Colors.grey, // Light grey border
      width: 1.0, // Thin border
    ),
    checkColor: WidgetStateProperty.all(Colors.white), // Checkmark color
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary; // Fill color when checked
      }
      return Colors.transparent; // Transparent when unchecked
    }),
    overlayColor: WidgetStateProperty.all(AppColors.primary.withOpacity(0.1)),
  );
}
