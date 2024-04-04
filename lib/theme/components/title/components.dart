import 'package:flutter/material.dart';
import 'package:flutter_web_demo/theme/tokens.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitle1 extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final TextAlign? textAlign;
  final String text;

  const SubTitle1({
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
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);
    return Text(
      text,
      textAlign: textAlign,
      textScaler: textScaler,
      style: GoogleFonts.inter(
        fontSize: Tokens.typographyTokens.fontSize.subTitle1,
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.subTitle1,
        color: color ?? Tokens.colorTokens.brand,
        fontStyle: Tokens.typographyTokens.fontStyle.subTitle1,
        letterSpacing: Tokens.typographyTokens.letterSpacing.subTitle1,
        height: Tokens.typographyTokens.lineHeight.subTitle1,
      ),
    );
  }
}

class SubTitle2 extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final TextAlign? textAlign;
  final String text;

  const SubTitle2({
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
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);
    return Text(
      text,
      textScaler: textScaler,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        fontSize: Tokens.typographyTokens.fontSize.subTitle2,
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.subTitle2,
        color: color ?? Tokens.colorTokens.brand,
        fontStyle: Tokens.typographyTokens.fontStyle.subTitle2,
        letterSpacing: Tokens.typographyTokens.letterSpacing.subTitle2,
        height: Tokens.typographyTokens.lineHeight.subTitle2,
      ),
    );
  }
}

class SubTitle3 extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final TextAlign? textAlign;
  final String text;

  const SubTitle3({
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
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);
    return Text(
      text,
      textScaler: textScaler,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        fontSize: Tokens.typographyTokens.fontSize.subTitle3,
        fontWeight: weight ?? Tokens.typographyTokens.fontWeight.subTitle3,
        color: color ?? Tokens.colorTokens.brand,
        fontStyle: Tokens.typographyTokens.fontStyle.subTitle3,
        letterSpacing: Tokens.typographyTokens.letterSpacing.subTitle3,
        height: Tokens.typographyTokens.lineHeight.subTitle3,
      ),
    );
  }
}
