import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_demo/router/app_router_constant.dart';
import 'package:flutter_web_demo/theme/components/buttons.dart';
import 'package:flutter_web_demo/theme/components/title/title.dart';
import 'package:go_router/go_router.dart';
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
              context.goNamed(AppRouterConstant.homeRouteName);
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
                context.goNamed(AppRouterConstant.optionOneRouteName,
                    extra: {"message": "option1 message"});
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.sw),
              child: Button(
                variant: ButtonVariant.text,
                label: "Option-2",
                onPressed: () {
                  context.goNamed(AppRouterConstant.optionTwoRouteName);
                },
              ),
            ),
            Button(
              variant: ButtonVariant.text,
              label: "Option-3",
              onPressed: () {
                context.goNamed(AppRouterConstant.optionThreeRouteName);
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
