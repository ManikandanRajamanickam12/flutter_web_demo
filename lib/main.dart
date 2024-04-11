import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_demo/components/bloc/option_one_bloc.dart';
import 'package:flutter_web_demo/router/app_router_config.dart';
import 'package:flutter_web_demo/theme/app_theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const FlutterWebDemo());
}

class FlutterWebDemo extends StatelessWidget {
  const FlutterWebDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => OptionOneBloc())],
      child: ResponsiveApp(builder: (context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Web Demo',
          theme: tcAppTheme,
          routerConfig: AppRouterConfig.returnRouter(true),
        );
      }),
    );
  }
}
