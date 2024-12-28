// lib/core/config/app_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colors
  static const primaryColor = Color(0xFF2196F3);
  static const secondaryColor = Color(0xFF512DA8);
  static const backgroundColor = Color(0xFFF5F5F5);
  static const errorColor = Color(0xFFD32F2F);

  // Text Styles
  static final TextTheme textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16,
      color: Colors.black87,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14,
      color: Colors.black87,
    ),
  );

  // Theme Data
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      error: errorColor,
      background: backgroundColor,
    ),
    textTheme: textTheme,
    useMaterial3: true,
    // Add more theme configurations as needed
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Add dark theme customizations here
    primaryColor: Colors.indigo,
    colorScheme: ColorScheme.dark(
      primary: Colors.indigo,
      secondary: Colors.indigoAccent,
    ),
  );
}