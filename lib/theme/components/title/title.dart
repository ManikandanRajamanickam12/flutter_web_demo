import 'package:flutter/widgets.dart';
import 'package:flutter_web_demo/theme/components/title/components.dart';

enum TitleVariant { subTitle1, subTitle2, subTitle3 }

class TitleTC extends StatelessWidget {
  final TitleVariant variant;
  final FontWeight? weight;
  final TextAlign? align;
  final Color? color;
  final String text;
  const TitleTC({
    super.key,
    required this.variant,
    this.align,
    this.weight,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case TitleVariant.subTitle1:
        return SubTitle1(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
        );

      case TitleVariant.subTitle2:
        return SubTitle2(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
        );

      case TitleVariant.subTitle3:
        return SubTitle3(
          text: text,
          weight: weight,
          color: color,
          textAlign: align,
        );
    }
  }
}
