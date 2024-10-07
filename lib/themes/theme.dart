// lib/presentation/themes/app_theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  // Light theme
  static ThemeData lightTheme = ThemeData(
    hintColor: Colors.white, // Accent color for highlights
    scaffoldBackgroundColor: Color(0xFF003F54), // Background color for screens
    appBarTheme: AppBarTheme(
      color: Color(0xFF003F54), // Background color of the AppBar
      elevation: 4, // Elevation (shadow) of the AppBar
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.white, // AppBar icon color
      ),
    ),
    textTheme: TextTheme(
      // bodyLarge: TextStyle(fontSize: 24.0, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 18, color: Colors.white),
      bodySmall: TextStyle(fontSize: 16.0, color: Colors.grey),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // Rounded corner buttons
      ),
      textTheme: ButtonTextTheme.primary, // Make button text white by default
    ),
    iconTheme: IconThemeData(
      color: Color(0xFF003F54), // Default icon color
    ),
  );

  // Dark theme
  // static ThemeData darkTheme = ThemeData(
  //   brightness: Brightness.dark, // Overall brightness
  //   primarySwatch: Colors.grey, // Primary swatch in dark mode
  //   hintColor: Colors.tealAccent, // Accent color for highlights in dark mode
  //   scaffoldBackgroundColor: Colors.black, // Dark background color
  //   appBarTheme: AppBarTheme(
  //     color: Colors.black,
  //     elevation: 4,
  //     titleTextStyle: TextStyle(
  //       color: Colors.white,
  //       fontSize: 20.0,
  //       fontWeight: FontWeight.bold,
  //     ),
  //     iconTheme: IconThemeData(
  //       color: Colors.white,
  //     ),
  //   ),
  //   textTheme: TextTheme(
  //     displayLarge: TextStyle(
  //         fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
  //     bodyLarge: TextStyle(fontSize: 16.0, color: Colors.white70),
  //     bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white60),
  //     bodySmall: TextStyle(fontSize: 12.0, color: Colors.grey),
  //   ),
  //   buttonTheme: ButtonThemeData(
  //     buttonColor: Colors.tealAccent,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(8.0),
  //     ),
  //     textTheme: ButtonTextTheme.primary,
  //   ),
  //   iconTheme: IconThemeData(
  //     color: Colors.tealAccent, // Icon color in dark mode
  //   ),
  // );
}
