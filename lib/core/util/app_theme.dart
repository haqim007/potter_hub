
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme{
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.libreBaskerville(color: Colors.white, fontSize: 16),
      bodyMedium: GoogleFonts.libreBaskerville(color: Colors.white, fontSize: 14),
      displayLarge: GoogleFonts.cormorantGaramond(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      displayMedium: GoogleFonts.cormorantGaramond(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
      displaySmall:  GoogleFonts.cormorantGaramond(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
      bodySmall: GoogleFonts.libreBaskerville(color: AppColors.surfaceLight, fontSize: 12),
      labelMedium: GoogleFonts.libreBaskerville(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
      titleMedium: const TextStyle(
        color: Colors.white
      )
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryLight,
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryLight,
      onPrimary: Colors.white,
      secondary: AppColors.secondaryLight,
      onSecondary: Colors.white,
      tertiary: AppColors.tertiaryLight,
      onTertiary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.surfaceLight,
      onSurface: Colors.black,
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.libreBaskerville(color: Colors.white, fontSize: 16),
      bodyMedium: GoogleFonts.libreBaskerville(color: Colors.white, fontSize: 14),
      displayLarge: GoogleFonts.cormorantGaramond(color: AppColors.primaryDark, fontSize: 32, fontWeight: FontWeight.bold),
      displayMedium: GoogleFonts.cormorantGaramond(color: AppColors.secondaryDark, fontSize: 24, fontWeight: FontWeight.w600),
      bodySmall: GoogleFonts.libreBaskerville(color: AppColors.surfaceDark, fontSize: 12),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.tertiaryDark,
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryDark,
      onPrimary: Colors.black,
      secondary: AppColors.secondaryDark,
      onSecondary: Colors.black,
      tertiary: AppColors.tertiaryDark,
      onTertiary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.surfaceDark,
      onSurface: Colors.white,
    ),
  );
}

final appTheme = ThemeData(
  useMaterial3: true,
  primaryColor: const Color(0xFF0D47A1), // Dark Blue
  textTheme: TextTheme(
    displayLarge: GoogleFonts.lora(
      fontSize: 72,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 18,
      color: Colors.white70,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 16,
      color: Colors.white60,
    ),
  ),
  appBarTheme: AppBarTheme(
    color: const Color(0xFF0D47A1),
    toolbarTextStyle: TextTheme(
      titleLarge: GoogleFonts.lora(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ).bodyMedium,
    titleTextStyle: TextTheme(
      titleLarge: GoogleFonts.lora(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ).titleLarge,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFFFFD700),
    textTheme: ButtonTextTheme.primary,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: const Color(0xFFFFD700),
      surface: const Color(0xFF1A237E)
  )
);
