import 'package:flutter/material.dart';
import 'package:flutter_web_demo/theme/tokens.dart';
import 'package:google_fonts/google_fonts.dart';

class H4 extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final TextAlign? textAlign;
  final String text;

  const H4({
    super.key,
    this.weight,
    this.textAlign,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1);
    return Text(
      text,
      textAlign: textAlign,
      textScaler: textScaler,
      style: GoogleFonts.inter(
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.headline4,
        fontSize: Tokens.typographyTokens.fontSize.headline4,
        color: color ?? Tokens.colorTokens.brand,
        fontStyle: Tokens.typographyTokens.fontStyle.headline4,
        letterSpacing: Tokens.typographyTokens.letterSpacing.headline4,
        height: Tokens.typographyTokens.lineHeight.headline4,
      ),
    );
  }
}

class H5 extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final TextAlign? textAlign;
  final String text;

  const H5({
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1);
    return Text(
      text,
      textScaler: textScaler,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.headline5,
        fontSize: Tokens.typographyTokens.fontSize.headline5,
        color: color ?? Tokens.colorTokens.brand,
        fontStyle: Tokens.typographyTokens.fontStyle.headline5,
        letterSpacing: Tokens.typographyTokens.letterSpacing.headline5,
        height: Tokens.typographyTokens.lineHeight.headline5,
      ),
    );
  }
}

class H6 extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final TextAlign? textAlign;
  final String text;

  const H6({
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1);
    return Text(
      text,
      textAlign: textAlign,
      textScaler: textScaler,
      style: GoogleFonts.inter(
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.headline6,
        fontSize: Tokens.typographyTokens.fontSize.headline6,
        color: color ?? Tokens.colorTokens.brand,
        fontStyle: Tokens.typographyTokens.fontStyle.headline6,
        letterSpacing: Tokens.typographyTokens.letterSpacing.headline6,
        height: Tokens.typographyTokens.lineHeight.headline6,
      ),
    );
  }
}
