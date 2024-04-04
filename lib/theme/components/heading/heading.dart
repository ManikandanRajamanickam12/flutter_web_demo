import 'package:flutter/widgets.dart';
import 'package:flutter_web_demo/theme/components/heading/components.dart';

enum HeadingVariant { h4, h5, h6 }

class Heading extends StatelessWidget {
  final HeadingVariant variant;
  final FontWeight? weight;
  final TextAlign? align;
  final Color? color;
  final String text;

  const Heading({
    super.key,
    required this.variant,
    this.weight,
    this.color,
    this.align,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case HeadingVariant.h4:
        return H4(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
        );

      case HeadingVariant.h5:
        return H5(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
        );

      case HeadingVariant.h6:
        return H6(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
        );
    }
  }
}
