// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_web_demo/pages/home_page.dart';
// import 'package:flutter_web_demo/theme/components/text/text.dart';

// const String homeRoute = "/home";
// // For demo
// const String optionOne = "/option1";
// const String optionTwo = "/option2";
// const String optionThree = "/option3";
// Route<dynamic> generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case homeRoute:
//       return _getPageRoute(const HomePage());
//     case optionOne:
//       return _getPageRoute(const Center(
//         child: TextTC(
//           variant: TextVariant.body1,
//           text: "OptionOne",
//         ),
//       ));
//     case optionTwo:
//       return _getPageRoute(const Center(
//         child: TextTC(
//           variant: TextVariant.body1,
//           text: "OptionTwo",
//         ),
//       ));
//     case optionThree:
//       return _getPageRoute(const Center(
//         child: TextTC(
//           variant: TextVariant.body1,
//           text: "OptionThree",
//         ),
//       ));
//     default:
//       return _getPageRoute(const Center(
//         child: TextTC(
//           variant: TextVariant.body1,
//           text: "Home",
//         ),
//       ));
//   }
// }

// PageRoute _getPageRoute(Widget child) {
//   return _FadeRoute(
//     child: child,
//   );
// }

// class _FadeRoute extends PageRouteBuilder {
//   final Widget child;
//   _FadeRoute({required this.child})
//       : super(
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               child,
//           transitionsBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) =>
//               FadeTransition(
//             opacity: animation,
//             child: child,
//           ),
//         );
// }
