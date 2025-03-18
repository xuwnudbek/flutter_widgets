import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    dividerColor: AppColors.transparent,
    fontFamily: "Montserrat",
    textTheme: TextTheme(
      titleLarge: GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textLight,
      ),
      titleMedium: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textLight,
      ),
      titleSmall: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textLight,
      ),
      bodyLarge: GoogleFonts.montserrat(
        fontSize: 16,
        color: AppColors.textLight,
      ),
      bodyMedium: GoogleFonts.montserrat(
        fontSize: 14,
        color: AppColors.textLight,
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 12,
        color: AppColors.textLight,
      ),
    ),
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      shadowColor: AppColors.primary.withValues(alpha: 0.5),
    ),
    cardTheme: CardTheme(
      color: AppColors.cardLight,
      surfaceTintColor: AppColors.transparent,
      elevation: 5,
      margin: EdgeInsets.all(8),
    ),
    cardColor: AppColors.cardLight,
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
        backgroundColor: AppColors.white.withValues(alpha: 0.0),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        fixedSize: Size.square(40),
        foregroundColor: AppColors.textLight,
        backgroundColor: AppColors.white.withValues(alpha: 0.1),
      ),
    ),
    listTileTheme: ListTileThemeData(
      selectedTileColor: AppColors.backgroundLight,
      selectedColor: AppColors.primary,
      textColor: AppColors.textLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    expansionTileTheme: ExpansionTileThemeData(
      expandedAlignment: Alignment.bottomRight,
      backgroundColor: AppColors.cardLight,
      collapsedBackgroundColor: AppColors.backgroundLight,
      iconColor: AppColors.textLight,
      textColor: AppColors.textLight,
      collapsedIconColor: AppColors.textLight,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    dividerColor: AppColors.transparent,
    brightness: Brightness.dark,
    fontFamily: "Montserrat",
    textTheme: TextTheme(
      titleLarge: GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textDark,
      ),
      titleMedium: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textDark,
      ),
      titleSmall: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w500,
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
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark.withValues(alpha: 0.9),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: CardTheme(
      color: AppColors.cardDark,
      surfaceTintColor: AppColors.transparent,
      elevation: 5,
      margin: EdgeInsets.all(8),
    ),
    cardColor: AppColors.cardDark,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.backgroundDark,
      onSurface: AppColors.textDark,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        fixedSize: Size.fromHeight(40),
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.white.withValues(alpha: 0.0),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        fixedSize: Size.square(40),
        foregroundColor: AppColors.textDark,
        backgroundColor: AppColors.white.withValues(alpha: 0.1),
      ),
    ),
    listTileTheme: ListTileThemeData(
      selectedTileColor: AppColors.backgroundDark,
      selectedColor: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    expansionTileTheme: ExpansionTileThemeData(
      backgroundColor: AppColors.cardDark,
      collapsedBackgroundColor: AppColors.backgroundDark,
      iconColor: AppColors.textDark,
      textColor: AppColors.textDark,
      collapsedIconColor: AppColors.textDark,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
