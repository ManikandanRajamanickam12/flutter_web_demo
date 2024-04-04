import 'package:flutter/material.dart';
import 'package:flutter_web_demo/theme/tokens.dart';
import 'package:google_fonts/google_fonts.dart';

class Body1 extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  const Body1({
    super.key,
    required this.text,
    this.weight,
    this.color,
    this.textAlign,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);
    return Text(
      text,
      textScaler: textScaler,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        fontSize: Tokens.typographyTokens.fontSize.body1,
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.body1,
        color: color ?? Tokens.colorTokens.brand,
        fontStyle: Tokens.typographyTokens.fontStyle.body1,
        letterSpacing: Tokens.typographyTokens.letterSpacing.body1,
        height: Tokens.typographyTokens.lineHeight.body1,
        decoration: textDecoration,
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final String text;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  const Body2({
    super.key,
    required this.text,
    this.weight,
    this.color,
    this.textAlign,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);
    return Text(
      text,
      textScaler: textScaler,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        fontSize: Tokens.typographyTokens.fontSize.body2,
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.body2,
        color: color ?? Tokens.colorTokens.brand,
        fontStyle: Tokens.typographyTokens.fontStyle.body2,
        letterSpacing: Tokens.typographyTokens.letterSpacing.body2,
        height: Tokens.typographyTokens.lineHeight.body2,
        decoration: textDecoration,
      ),
    );
  }
}

class Body3 extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final String text;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  const Body3({
    super.key,
    required this.text,
    this.weight,
    this.color,
    this.textAlign,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);
    return Text(
      text,
      textScaler: textScaler,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        fontSize: Tokens.typographyTokens.fontSize.body3,
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.body3,
        color: color ?? Tokens.colorTokens.brand,
        fontStyle: Tokens.typographyTokens.fontStyle.body3,
        letterSpacing: Tokens.typographyTokens.letterSpacing.body3,
        height: Tokens.typographyTokens.lineHeight.body3,
        decoration: textDecoration,
      ),
    );
  }
}

class Caption extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final String text;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  const Caption({
    super.key,
    required this.text,
    this.weight,
    this.color,
    this.textAlign,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);
    return Text(
      text,
      textScaler: textScaler,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        fontSize: Tokens.typographyTokens.fontSize.caption,
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.caption,
        color: color ?? Tokens.colorTokens.content.primary,
        fontStyle: Tokens.typographyTokens.fontStyle.caption,
        letterSpacing: Tokens.typographyTokens.letterSpacing.caption,
        height: Tokens.typographyTokens.lineHeight.caption,
        decoration: textDecoration,
      ),
    );
  }
}

class Overline extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final String text;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  const Overline({
    super.key,
    required this.text,
    this.weight,
    this.color,
    this.textAlign,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);
    return Text(
      text,
      textAlign: textAlign,
      textScaler: textScaler,
      style: GoogleFonts.inter(
        fontSize: Tokens.typographyTokens.fontSize.overline,
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.overline,
        color: color ?? Tokens.colorTokens.content.primary,
        fontStyle: Tokens.typographyTokens.fontStyle.overline,
        letterSpacing: Tokens.typographyTokens.letterSpacing.overline,
        height: Tokens.typographyTokens.lineHeight.overline,
        decoration: textDecoration,
      ),
    );
  }
}
