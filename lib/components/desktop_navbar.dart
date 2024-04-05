import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_demo/common/services/locator.dart';
import 'package:flutter_web_demo/common/services/navigation_service.dart';
import 'package:flutter_web_demo/routing/route.dart';
import 'package:flutter_web_demo/theme/components/buttons.dart';
import 'package:flutter_web_demo/theme/components/title/title.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              locator<NavigationService>().navigateTo(homeRoute);
            },
            child:
                const TitleTC(variant: TitleVariant.subTitle1, text: "Logo")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              variant: ButtonVariant.text,
              label: "Option-1",
              onPressed: () {
                locator<NavigationService>().navigateTo(optionOne);
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.sw),
              child: Button(
                variant: ButtonVariant.text,
                label: "Option-2",
                onPressed: () {
                  locator<NavigationService>().navigateTo(optionTwo);
                },
              ),
            ),
            Button(
              variant: ButtonVariant.text,
              label: "Option-3",
              onPressed: () {
                locator<NavigationService>().navigateTo(optionThree);
              },
            ),
          ],
        ),
        Button(
            variant: ButtonVariant.primary,
            size: ButtonSize.large,
            onPressed: () {},
            label: "LOGIN")
      ],
    );
  }
}
