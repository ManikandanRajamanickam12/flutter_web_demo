import 'package:flutter/material.dart';
import 'package:flutter_web_demo/pages/home_page.dart';
import 'package:flutter_web_demo/theme/components/text/text.dart';

class OptionOne extends StatelessWidget {
  const OptionOne({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return TopNavigationBar(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextTC(
            variant: TextVariant.body1,
            text: "OptionOne",
          ),
          TextTC(
            variant: TextVariant.body2,
            text: message,
          ),
        ],
      ),
    );
  }
}
