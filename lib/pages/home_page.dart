import 'package:flutter/material.dart';
import 'package:flutter_web_demo/theme/components/buttons.dart';
import 'package:flutter_web_demo/theme/components/heading/heading.dart';
import 'package:flutter_web_demo/theme/components/text/text.dart';
import 'package:flutter_web_demo/theme/components/title/title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const TextTC(variant: TextVariant.body1, text: "Hello"),
            const TextTC(variant: TextVariant.body2, text: "Hello"),
            const TextTC(variant: TextVariant.body3, text: "Hello"),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Divider(),
            ),
            const TitleTC(variant: TitleVariant.subTitle1, text: "Hello"),
            const TitleTC(variant: TitleVariant.subTitle2, text: "Hello"),
            const TitleTC(variant: TitleVariant.subTitle3, text: "Hello"),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Divider(),
            ),
            const Heading(variant: HeadingVariant.h4, text: "Hello"),
            const Heading(variant: HeadingVariant.h5, text: "Hello"),
            const Heading(variant: HeadingVariant.h6, text: "Hello"),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Divider(),
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Button(
                    variant: ButtonVariant.primary,
                    onPressed: () {},
                    label: "SUBMIT"),
                Button(
                    variant: ButtonVariant.secondary,
                    onPressed: () {},
                    label: "SUBMIT"),
                Button(
                    variant: ButtonVariant.tertiary,
                    onPressed: () {},
                    label: "SUBMIT"),
                Button(
                    variant: ButtonVariant.text,
                    onPressed: () {},
                    label: "SUBMIT")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
