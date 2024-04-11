import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_demo/components/bloc/option_one_bloc.dart';

import 'package:flutter_web_demo/pages/home_page.dart';
import 'package:flutter_web_demo/theme/components/buttons.dart';
import 'package:flutter_web_demo/theme/components/text/text.dart';
import 'package:flutter_web_demo/theme/tokens.dart';
import 'package:go_router/go_router.dart';

class OptionOne extends StatelessWidget {
  const OptionOne({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        context.read<OptionOneBloc>().add(OptionOneResetEvent());
        context.pop();
      },
      child: TopNavigationBar(
        child: BlocConsumer<OptionOneBloc, OptionOneState>(
            listenWhen: (previous, current) => current is OptionOneActionState,
            buildWhen: (previous, current) => current is! OptionOneActionState,
            listener: (context, state) {
              if (state is OptionOneSuccessState) {
                return WidgetsBinding.instance.addPostFrameCallback((_) async {
                  showDialog(
                      context: context,
                      builder: (ctx) => CustomDialog(
                            description: state.successMessage,
                            onProceed: () {
                              Navigator.of(ctx).pop();
                            },
                            onCancel: () {
                              Navigator.of(ctx).pop();
                            },
                          ));
                });
              }
            },
            builder: (context, state) {
              print(state.runtimeType);
              if (state is OptionOneInitialState) {
                return Column(
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
                    Button(
                        variant: ButtonVariant.primary,
                        onPressed: () {
                          context
                              .read<OptionOneBloc>()
                              .add(OptionOneIncreamentEvent(value: 1));
                        },
                        label: "Increament"),
                  ],
                );
              } else if (state is OptionOneIncreamentState) {
                return Column(
                  children: [
                    TextTC(
                        variant: TextVariant.body1,
                        text: context
                            .read<OptionOneBloc>()
                            .countValue
                            .toString()),
                    Button(
                        variant: ButtonVariant.primary,
                        onPressed: () {
                          context
                              .read<OptionOneBloc>()
                              .add(OptionOneIncreamentEvent(value: 1));
                        },
                        label: "Increament"),
                    Button(
                        variant: ButtonVariant.tertiary,
                        onPressed: () {
                          context
                              .read<OptionOneBloc>()
                              .add(OptionOneSuccessEvent());
                        },
                        label: "Show Success Dialog"),
                    Button(
                        variant: ButtonVariant.tertiary,
                        onPressed: () {},
                        label: "Next Page")
                  ],
                );
              } else {
                return const Center(
                  child:
                      TextTC(variant: TextVariant.body3, text: "Unknown Error"),
                );
              }
            }),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.description,
    required this.onProceed,
    required this.onCancel,
  });

  final Function() onProceed;
  final Function() onCancel;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Tokens.borderRadius),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Tokens.colorTokens.content.white,
          borderRadius: BorderRadius.circular(Tokens.borderRadius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextTC(
                text: description,
                variant: TextVariant.body1,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Button(
                          variant: ButtonVariant.text,
                          onPressed: onCancel,
                          label: "Cancel",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        child: Button(
                          variant: ButtonVariant.text,
                          onPressed: onProceed,
                          label: "Ok",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
