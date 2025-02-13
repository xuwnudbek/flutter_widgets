import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    fontFamily: "Montserrat",
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textLight,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textLight,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textLight,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColors.textLight,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppColors.textLight,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: AppColors.textLight,
      ),
    ),
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    cardTheme: CardTheme(
      color: AppColors.cardLight,
      elevation: 2,
      margin: EdgeInsets.all(8),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.backgroundLight,
      onSurface: AppColors.textLight,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        fixedSize: Size.fromHeight(40),
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.white.withValues(alpha: 0.2),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: "Montserrat",
    textTheme: TextTheme(
      titleLarge: GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textDark,
      ),
      titleMedium: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.textDark,
      ),
      titleSmall: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.textDark,
      ),
      bodyLarge: GoogleFonts.montserrat(
        fontSize: 16,
        color: AppColors.textDark,
      ),
      bodyMedium: GoogleFonts.montserrat(
        fontSize: 14,
        color: AppColors.textDark,
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 12,
        color: AppColors.textDark,
      ),
    ),
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: CardTheme(
      color: AppColors.cardDark,
      elevation: 2,
      margin: EdgeInsets.all(8),
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.backgroundDark,
      onSurface: AppColors.textDark,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        fixedSize: Size.fromHeight(40),
        foregroundColor: AppColors.textDark,
        backgroundColor: AppColors.backgroundDark,
      ),
    ),
  );
}
