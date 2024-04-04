import 'package:flutter/material.dart';
import 'package:flutter_web_demo/theme/components/text/components.dart';

enum TextVariant { body1, body2, body3, caption, overline }

class TextTC extends StatelessWidget {
  final TextVariant variant;
  final String text;
  final FontWeight? weight;
  final Color? color;
  final TextAlign? align;
  final TextDecoration? decoration;
  const TextTC({
    super.key,
    required this.variant,
    this.weight,
    this.color,
    this.align,
    this.decoration,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case TextVariant.body1:
        return Body1(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
          textDecoration: decoration,
        );
      case TextVariant.body2:
        return Body2(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
          textDecoration: decoration,
        );
      case TextVariant.body3:
        return Body3(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
          textDecoration: decoration,
        );
      case TextVariant.caption:
        return Caption(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
          textDecoration: decoration,
        );
      case TextVariant.overline:
        return Overline(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
          textDecoration: decoration,
        );
    }
  }
}
