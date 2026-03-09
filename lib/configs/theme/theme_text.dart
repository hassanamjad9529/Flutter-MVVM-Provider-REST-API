import 'package:flutter/material.dart';

class Themetext {
  Themetext._();

  // Font sizes
  static const double extraSmallSize = 8.0;
  static const double smallSize = 12.0;
  static const double mediumSize = 16.0;
  static const double largeSize = 20.0;
  static const double extraLargeSize = 24.0;
  static const double hugeSize = 30.0;

  // Font weights
  static const FontWeight lightWeight = FontWeight.w300;
  static const FontWeight regularWeight = FontWeight.w400;
  static const FontWeight mediumWeight = FontWeight.w500;
  static const FontWeight semiBoldWeight = FontWeight.w600;
  static const FontWeight boldWeight = FontWeight.w700;

  // Default font family
  static const String defaultFontFamily = 'Onest';

  // TextTheme for global usage
  static TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: hugeSize,
      fontWeight: boldWeight,
    ),
    displayMedium: TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: extraLargeSize,
      fontWeight: semiBoldWeight,
    ),
    displaySmall: TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: largeSize,
      fontWeight: semiBoldWeight,
    ),
    bodyLarge: TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: mediumSize,
      fontWeight: mediumWeight,
    ),
    bodyMedium: TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: smallSize,
      fontWeight: regularWeight,
    ),
    bodySmall: TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: extraSmallSize,
      fontWeight: lightWeight,
    ),
  );

  // Additional reusable text styles
  static TextStyle heading1 = const TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: hugeSize,
    fontWeight: boldWeight,
    color: Colors.black,
  );

  static TextStyle heading2 = const TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: extraLargeSize,
    fontWeight: semiBoldWeight,
    color: Colors.black,
  );

  static TextStyle heading3 = const TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: largeSize,
    fontWeight: semiBoldWeight,
    color: Colors.black,
  );

  static TextStyle bodyText = const TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: mediumSize,
    fontWeight: regularWeight,
    color: Colors.black,
  );

  static TextStyle caption = const TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: smallSize,
    fontWeight: lightWeight,
    color: Colors.grey,
  );

  static TextStyle buttonText = const TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 18,
    fontWeight: boldWeight,
    color: Colors.white,
  );

  static TextStyle linkText = const TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: mediumSize,
    fontWeight: mediumWeight,
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );

  // Custom method to get dynamic styles
  static TextStyle customTextStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    String? fontFamily,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      fontSize: fontSize ?? mediumSize,
      fontWeight: fontWeight ?? regularWeight,
      color: color ?? Colors.black,
      decoration: decoration,
    );
  }
}
