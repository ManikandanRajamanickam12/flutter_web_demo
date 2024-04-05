import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_demo/common/services/locator.dart';
import 'package:flutter_web_demo/common/services/navigation_service.dart';
import 'package:flutter_web_demo/routing/route.dart';
import 'package:flutter_web_demo/theme/components/title/title.dart';

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu)),
          GestureDetector(
              onTap: () {
                locator<NavigationService>().navigateTo(homeRoute);
              },
              child:
                  const TitleTC(variant: TitleVariant.subTitle1, text: "Logo")),
        ],
      ),
    );
  }
}
