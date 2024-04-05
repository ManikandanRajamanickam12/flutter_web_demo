import 'package:flutter/material.dart';
import 'package:flutter_web_demo/common/services/locator.dart';
import 'package:flutter_web_demo/pages/home_page.dart';
import 'package:flutter_web_demo/theme/app_theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Web Demo',
        theme: tcAppTheme,
        home: const LayoutTemplate(),
      );
    });
  }
}
