import 'package:flutter/material.dart';
import 'package:flutter_web_demo/pages/home_page.dart';
import 'package:flutter_web_demo/pages/option_one.dart';
import 'package:flutter_web_demo/pages/option_three.dart';
import 'package:flutter_web_demo/pages/option_two.dart';
import 'package:flutter_web_demo/routing/app_route_constants.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      initialLocation: "/",
      routes: [
        // ShellRoute(
        //   routes: [
        GoRoute(
          name: AppRouteConstants.homeRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage());
          },
        ),
        GoRoute(
          name: AppRouteConstants.optionOneRouteName,
          path: '/option1',
          pageBuilder: (context, state) {
            return MaterialPage(
                child: OptionOne(
              message: (state.extra as Map<String, String>)["message"]!,
            ));
          },
        ),
        GoRoute(
          name: AppRouteConstants.optionTwoRouteName,
          path: '/option2',
          pageBuilder: (context, state) {
            return const MaterialPage(child: OptionTwo());
          },
        ),
        GoRoute(
          name: AppRouteConstants.optionThreeRouteName,
          path: '/option3',
          pageBuilder: (context, state) {
            return const MaterialPage(child: OptionThree());
          },
        ),
      ],
      // builder: (context, state, child) {
      //   return const TopNavigationBar();
      // },
      //   )
      // ],
      errorPageBuilder: (context, state) {
        print(state.error);
        return const MaterialPage(
            child: Scaffold(
          body: Text("error"),
        ));
      },
      redirect: (context, state) {
        if (!isAuth && state.matchedLocation.startsWith("/")) {
          return "/${AppRouteConstants.optionThreeRouteName}";
        }
        return null;
      },
    );
    return router;
  }
}
