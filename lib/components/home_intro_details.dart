import 'package:flutter/material.dart';
import 'package:flutter_web_demo/theme/components/heading/heading.dart';
import 'package:flutter_web_demo/theme/components/text/text.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeIntroDetails extends StatelessWidget {
  const HomeIntroDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      TextAlign align =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      return SizedBox(
        width: 60.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Heading(
              variant: HeadingVariant.h4,
              text: "FLUTTER WEB \nTHE BASICS",
              weight: FontWeight.bold,
            ),
            const SizedBox(
              height: 30,
            ),
            TextTC(
                variant: TextVariant.body1,
                align: align,
                text:
                    "A Deme application which will go over the basics of using Flutter Web for website development.")
          ],
        ),
      );
    });
  }
}
