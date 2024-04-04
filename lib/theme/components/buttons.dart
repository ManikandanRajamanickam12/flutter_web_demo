import 'package:flutter/material.dart';
import 'package:flutter_web_demo/theme/app_theme.dart';
import 'package:flutter_web_demo/theme/components/title/title.dart';
import 'package:flutter_web_demo/theme/tokens.dart';
import 'package:responsive_builder/responsive_builder.dart';

enum ButtonVariant { primary, secondary, tertiary, text, link }

enum ButtonSize { small, medium, large, stretch, compact }

enum IconPosition { left, right }

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.variant,
    required this.onPressed,
    required this.label,
    this.disabled = false,
    this.size = ButtonSize.large,
    this.icon,
    this.iconPosition,
    this.color,
    this.transparent = false,
  });

  final ButtonVariant variant;
  final String label;
  final void Function()? onPressed;
  final bool disabled;
  final ButtonSize size;
  final Icon? icon;
  final IconPosition? iconPosition;
  final Color? color;
  final bool transparent;

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case ButtonVariant.primary:
        return ButtonPrimary(
          onPressed: onPressed,
          label: label,
          disabled: disabled,
          size: size,
          icon: icon,
          iconPosition: iconPosition,
        );
      case ButtonVariant.secondary:
        return ButtonSecondary(
          onPressed: onPressed,
          label: label,
          disabled: disabled,
          size: size,
          icon: icon,
          iconPosition: iconPosition,
        );
      case ButtonVariant.tertiary:
        return ButtonTertiary(
          onPressed: onPressed,
          label: label,
          disabled: disabled,
          size: size,
          icon: icon,
          iconPosition: iconPosition,
        );
      case ButtonVariant.link:
        return ButtonLink(
          onPressed: onPressed,
          label: label,
          icon: icon,
          iconPosition: iconPosition,
        );
      case ButtonVariant.text:
        return ButtonText(
          onPressed: onPressed,
          label: label,
          icon: icon,
          iconPosition: iconPosition,
        );
    }
  }
}

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    super.key,
    required this.onPressed,
    required this.label,
    required this.disabled,
    required this.size,
    this.icon,
    this.iconPosition,
  });

  final String label;
  final void Function()? onPressed;
  final bool disabled;
  final ButtonSize size;
  final Icon? icon;
  final IconPosition? iconPosition;

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);

    final Size buttonSize =
        getSizeValue(size: size, textScaler: textScaler.scale(1));

    return Opacity(
      opacity: disabled ? 0.2 : 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Tokens.borderRadius),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Tokens.borderRadius),
            ),
            elevation: 0,
            minimumSize: buttonSize,
            foregroundColor: tcColorScheme.surface,
            backgroundColor: tcColorScheme.onSurface,
          ),
          onPressed: !disabled ? onPressed : () {},
          child: FittedBox(
            child: Padding(
              padding: getButtonPadding(size),
              child: ButtonChildren(
                  icon: icon,
                  iconPosition: iconPosition,
                  child: TitleTC(
                    text: label,
                    variant: TitleVariant.subTitle2,
                    color: tcColorScheme.surface,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonSecondary extends StatelessWidget {
  const ButtonSecondary({
    super.key,
    required this.onPressed,
    required this.label,
    required this.disabled,
    required this.size,
    this.icon,
    this.iconPosition,
  });

  final String label;
  final bool disabled;
  final void Function()? onPressed;
  final ButtonSize size;
  final Icon? icon;
  final IconPosition? iconPosition;

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);

    final Size buttonSize =
        getSizeValue(size: size, textScaler: textScaler.scale(1));

    return Opacity(
      opacity: disabled ? 0.2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Tokens.borderRadius),
            side: BorderSide(
              width: 1,
              color: tcColorScheme.onSurface,
            ),
          ),
          elevation: 0,
          minimumSize: buttonSize,
          foregroundColor: tcColorScheme.onSurface,
          backgroundColor: tcColorScheme.surface,
        ),
        onPressed: !disabled ? onPressed : () {},
        child: FittedBox(
          child: Padding(
            padding: getButtonPadding(size),
            child: ButtonChildren(
                icon: icon,
                iconPosition: iconPosition,
                child: TitleTC(
                  text: label,
                  variant: TitleVariant.subTitle2,
                  color: tcColorScheme.onSurface,
                )),
          ),
        ),
      ),
    );
  }
}

class ButtonTertiary extends StatelessWidget {
  const ButtonTertiary({
    super.key,
    required this.onPressed,
    required this.label,
    required this.disabled,
    required this.size,
    this.icon,
    this.iconPosition,
  });

  final String label;
  final bool disabled;
  final void Function()? onPressed;
  final ButtonSize size;
  final Icon? icon;
  final IconPosition? iconPosition;

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);

    final Size buttonSize =
        getSizeValue(size: size, textScaler: textScaler.scale(1));

    return Opacity(
      opacity: disabled ? 0.2 : 1,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 0, color: Colors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Tokens.borderRadius),
          ),
          elevation: 0,
          minimumSize: buttonSize,
          foregroundColor: tcColorScheme.onSurface,
          backgroundColor: Colors.transparent,
        ),
        onPressed: !disabled ? onPressed : () {},
        child: FittedBox(
          child: Padding(
            padding: getButtonPadding(size),
            child: ButtonChildren(
                icon: icon,
                iconPosition: iconPosition,
                child: TitleTC(
                  text: label,
                  variant: TitleVariant.subTitle2,
                  color: tcColorScheme.onSurface,
                )),
          ),
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.iconPosition,
  });

  final String label;
  final void Function()? onPressed;
  final Icon? icon;
  final IconPosition? iconPosition;

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);

    final Size buttonSize = getSizeValue(
      size: ButtonSize.compact,
      textScaler: textScaler.scale(1),
    );

    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Tokens.borderRadius),
        ),
        minimumSize: buttonSize,
        textStyle: tcTextTheme.labelLarge!.copyWith(
          color: tcColorScheme.onPrimary,
          fontWeight: FontWeight.w600,
        ),
        foregroundColor: tcColorScheme.onSurface,
        backgroundColor: tcColorScheme.surface,
      ),
      onPressed: onPressed,
      child: FittedBox(
        child: ButtonChildren(
            icon: icon,
            iconPosition: iconPosition,
            child: TitleTC(
              text: label,
              variant: TitleVariant.subTitle2,
              color: tcColorScheme.onSurface,
            )),
      ),
    );
  }
}

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.iconPosition,
  });

  final String label;
  final void Function()? onPressed;
  final Icon? icon;
  final IconPosition? iconPosition;

  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.of(context)
        .textScaler
        .clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25);

    final Size buttonSize = getSizeValue(
      size: ButtonSize.compact,
      textScaler: textScaler.scale(1),
    );

    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Tokens.borderRadius),
        ),
        minimumSize: buttonSize,
        foregroundColor: tcColorScheme.primary,
        backgroundColor: tcColorScheme.surface,
      ),
      onPressed: onPressed,
      child: FittedBox(
        child: ButtonChildren(
            icon: icon,
            iconPosition: iconPosition,
            child: TitleTC(
              text: label,
              variant: TitleVariant.subTitle2,
              color: tcColorScheme.onSurface,
            )),
      ),
    );
  }
}

class ButtonChildren extends StatelessWidget {
  const ButtonChildren({
    super.key,
    required this.child,
    this.icon,
    this.iconPosition,
  });

  final Widget child;
  final Icon? icon;
  final IconPosition? iconPosition;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            if (iconPosition == IconPosition.left) icon!,
            if (iconPosition == IconPosition.left)
              const SizedBox(
                width: 4,
              ),
            child,
            if (iconPosition == IconPosition.right)
              const SizedBox(
                width: 4,
              ),
            if (iconPosition == IconPosition.right) icon!,
          ],
        ),
      );
    }
    return child;
  }
}

Size getSizeValue({
  ButtonSize size = ButtonSize.large,
  double textScaler = 1,
}) {
  switch (size) {
    case ButtonSize.small:
      const buttonSize = 32.0;
      return Size(
        buttonSize * 3 * textScaler,
        buttonSize * textScaler,
      );
    case ButtonSize.medium:
      const buttonSize = 32.0;
      return Size(
        buttonSize * 3 * textScaler,
        buttonSize * textScaler,
      );
    case ButtonSize.large:
      const buttonSize = 48.0;
      return Size(
        buttonSize * 3 * textScaler,
        buttonSize * textScaler,
      );
    case ButtonSize.stretch:
      const buttonSize = 32.0;
      return Size(double.infinity, buttonSize * textScaler);
    case ButtonSize.compact:
      return const Size(0, 0);
  }
}

EdgeInsets getButtonPadding(ButtonSize buttonSize) {
  switch (buttonSize) {
    case ButtonSize.small:
      return EdgeInsets.symmetric(vertical: .8.sh, horizontal: 4.sw);
    case ButtonSize.medium:
      return EdgeInsets.symmetric(vertical: 1.sh, horizontal: 4.sw);
    case ButtonSize.compact:
      return EdgeInsets.symmetric(vertical: 1.sh, horizontal: 6.sw);
    default:
      return EdgeInsets.symmetric(vertical: 1.sh, horizontal: 8.sw);
  }
}
