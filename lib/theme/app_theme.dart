import 'package:flutter/material.dart';
import 'package:flutter_web_demo/theme/tokens.dart';
import 'package:flutter_web_demo/theme/ui_constants.dart';
import 'package:google_fonts/google_fonts.dart';

const tcColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff152238),
  onPrimary: Color(0xffD4D6D8),
  secondary: Colors.black,
  onSecondary: Color(0xff4C4C4C),
  tertiary: Color(0xFFEDEDED),
  error: Color(0xffD90000),
  onError: Color(0xffD90000),
  background: Colors.white,
  onBackground: Colors.black,
  surface: Colors.white,
  onSurface: Color(0xff0076CE),
);

final tcAppTheme = ThemeData(
  colorScheme: tcColorScheme,
  useMaterial3: true,
  scaffoldBackgroundColor: tcColorScheme.background,
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: tcTextTheme.labelLarge!.copyWith(
      color: tcColorScheme.onBackground.withOpacity(0.6),
    ),
    filled: true,
    fillColor: tcColorScheme.background,
    contentPadding: const EdgeInsets.fromLTRB(12, 0, 10, 0),
    errorStyle: tcTextTheme.bodySmall!.copyWith(
      color: tcColorScheme.error,
      fontSize: errorFontSize,
    ),
    border: InputBorder.none,
    enabledBorder:
        getFieldOutlineBorder(tcColorScheme.onSecondary.withOpacity(0.8)),
    focusedBorder:
        getFieldOutlineBorder(tcColorScheme.onSecondary.withOpacity(0.8)),
    errorBorder: getFieldOutlineBorder(tcColorScheme.onError),
    focusedErrorBorder:
        getFieldOutlineBorder(tcColorScheme.onSecondary.withOpacity(0.8)),
    disabledBorder:
        getFieldOutlineBorder(tcColorScheme.onSecondary.withOpacity(0.8)),
    hintStyle: tcTextTheme.bodyMedium!.copyWith(
      color: tcColorScheme.onSecondary.withOpacity(0.8),
    ),
  ),
);

OutlineInputBorder getFieldOutlineBorder(Color color) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 1.4),
    borderRadius: BorderRadius.circular(Tokens.borderRadius),
  );
}

final tcTextTheme = TextTheme(
  displayLarge:
      GoogleFonts.inter(fontSize: 36, color: tcColorScheme.onBackground),
  displayMedium: GoogleFonts.inter(color: tcColorScheme.onBackground),
  displaySmall: GoogleFonts.inter(color: tcColorScheme.onBackground),
  headlineLarge: GoogleFonts.inter(color: tcColorScheme.onBackground),
  headlineMedium: GoogleFonts.inter(color: tcColorScheme.onBackground),
  headlineSmall: GoogleFonts.inter(
    fontWeight: FontWeight.w500,
    color: tcColorScheme.onBackground,
  ),
  titleLarge: GoogleFonts.inter(
      fontSize: Tokens.typographyTokens.fontSize.subTitle1,
      color: tcColorScheme.onBackground),
  titleMedium: GoogleFonts.inter(
    color: tcColorScheme.onBackground,
    fontWeight: FontWeight.w600,
  ),
  titleSmall: GoogleFonts.inter(color: tcColorScheme.onBackground),
  bodyLarge: GoogleFonts.inter(color: tcColorScheme.onBackground),
  bodyMedium: GoogleFonts.inter(color: tcColorScheme.onBackground),
  bodySmall: GoogleFonts.inter(color: tcColorScheme.onBackground),
  labelLarge: GoogleFonts.inter(
      fontSize: Tokens.typographyTokens.fontSize.subTitle2,
      fontWeight: FontWeight.bold,
      color: tcColorScheme.onBackground),
  labelMedium: GoogleFonts.inter(color: tcColorScheme.onBackground),
  labelSmall: GoogleFonts.inter(color: tcColorScheme.onBackground),
);
