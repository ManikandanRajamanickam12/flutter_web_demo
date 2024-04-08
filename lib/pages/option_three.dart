import 'package:flutter/material.dart';
import 'package:flutter_web_demo/pages/home_page.dart';
import 'package:flutter_web_demo/theme/components/text/text.dart';

class OptionThree extends StatelessWidget {
  const OptionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const TopNavigationBar(
      child: Center(
        child: TextTC(
          variant: TextVariant.body1,
          text: "OptionThree",
        ),
      ),
    );
  }
}
