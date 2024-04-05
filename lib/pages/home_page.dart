import 'package:flutter/material.dart';
import 'package:flutter_web_demo/common/services/locator.dart';
import 'package:flutter_web_demo/common/services/navigation_service.dart';
import 'package:flutter_web_demo/components/desktop_navbar.dart';
import 'package:flutter_web_demo/components/home_intro_details.dart';
import 'package:flutter_web_demo/components/mobile_app_drawer.dart';
import 'package:flutter_web_demo/components/mobile_nav_bar.dart';
import 'package:flutter_web_demo/routing/route.dart';
import 'package:flutter_web_demo/theme/components/buttons.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const MobileAppDrawer()
            : null,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.sw, vertical: 2.sh),
          child: Column(
            children: [
              const NavigationBar(),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: homeRoute,
              ))
            ],
          ),
        ),
      );
    });
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const MobileHomeContent(),
      tablet: (_) => const MobileHomeContent(),
      desktop: (_) => const DesktopHomeContent(),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const MobileNavBar(),
      tablet: (_) => const MobileNavBar(),
      desktop: (_) => const DesktopNavBar(),
    );
  }
}

class DesktopHomeContent extends StatelessWidget {
  const DesktopHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      const HomeIntroDetails(),
      Center(
        child: Button(
            variant: ButtonVariant.primary, onPressed: () {}, label: "EXPLORE"),
      )
    ]);
  }
}

class MobileHomeContent extends StatelessWidget {
  const MobileHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const HomeIntroDetails(),
      Expanded(
          child: Center(
        child: Button(
            variant: ButtonVariant.primary,
            size: ButtonSize.stretch,
            onPressed: () {},
            label: "EXPLORE"),
      ))
    ]);
  }
}



// TODO: Add below into design systems menu

// Center(
//         // TODO: Will be moved to seperately under menu option
//         child: Column(
//           children: [
//             const TextTC(variant: TextVariant.body1, text: "Hello"),
//             const TextTC(variant: TextVariant.body2, text: "Hello"),
//             const TextTC(variant: TextVariant.body3, text: "Hello"),
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 20),
//               child: Divider(),
//             ),
//             const TitleTC(variant: TitleVariant.subTitle1, text: "Hello"),
//             const TitleTC(variant: TitleVariant.subTitle2, text: "Hello"),
//             const TitleTC(variant: TitleVariant.subTitle3, text: "Hello"),
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 20),
//               child: Divider(),
//             ),
//             const Heading(variant: HeadingVariant.h4, text: "Hello"),
//             const Heading(variant: HeadingVariant.h5, text: "Hello"),
//             const Heading(variant: HeadingVariant.h6, text: "Hello"),
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 20),
//               child: Divider(),
//             ),
//             Wrap(
//               spacing: 20,
//               runSpacing: 20,
//               crossAxisAlignment: WrapCrossAlignment.center,
//               children: [
//                 Button(
//                     variant: ButtonVariant.primary,
//                     onPressed: () {},
//                     label: "SUBMIT"),
//                 Button(
//                     variant: ButtonVariant.secondary,
//                     onPressed: () {},
//                     label: "SUBMIT"),
//                 Button(
//                     variant: ButtonVariant.tertiary,
//                     onPressed: () {},
//                     label: "SUBMIT"),
//                 Button(
//                     variant: ButtonVariant.text,
//                     onPressed: () {},
//                     label: "SUBMIT")
//               ],
//             ),
//           ],
//         ),
//       ),
