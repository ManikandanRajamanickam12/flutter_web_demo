import 'package:flutter/material.dart';
import 'package:flutter_web_demo/pages/home_page.dart';
import 'package:flutter_web_demo/pages/option_one.dart';
import 'package:flutter_web_demo/pages/option_three.dart';
import 'package:flutter_web_demo/pages/option_two.dart';
import 'package:flutter_web_demo/router/app_router_constant.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  static returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      initialLocation: "/",
      routes: [
        GoRoute(
          name: AppRouterConstant.homeRouteName,
          path: AppRouterConstant.homeRoutePath,
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage());
          },
        ),
        GoRoute(
          name: AppRouterConstant.optionOneRouteName,
          path: AppRouterConstant.optionOneRoutePath,
          pageBuilder: (context, state) {
            return MaterialPage(
                child: OptionOne(
              message: (state.extra as Map<String, String>)["message"]!,
            ));
          },
        ),
        GoRoute(
          name: AppRouterConstant.optionTwoRouteName,
          path: AppRouterConstant.optionTwoRoutePath,
          pageBuilder: (context, state) {
            return const MaterialPage(child: OptionTwo());
          },
        ),
        GoRoute(
          name: AppRouterConstant.optionThreeRouteName,
          path: AppRouterConstant.optionThreeRoutePath,
          pageBuilder: (context, state) {
            return const MaterialPage(child: OptionThree());
          },
        ),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(
            child: Scaffold(
          body: Text("error"),
        ));
      },
      redirect: (context, state) {
        if (!isAuth && state.matchedLocation.startsWith("/")) {
          return AppRouterConstant.optionThreeRoutePath;
        }
        return null;
      },
    );
    return router;
  }
}
