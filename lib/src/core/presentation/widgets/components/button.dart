import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../../../style/typography.dart';

class TraverPrimaryButton extends StatelessWidget {
  final ButtonSize? size;
  final VoidCallback onTap;
  final String text;
  final bool isDisabled;
  final bool isIconOnly;
  final IconData? iconLeft;
  final IconData? iconRight;
  final IconData? icon;

  const TraverPrimaryButton({
    required this.onTap,
    required this.text,
    required this.isDisabled,
    required this.isIconOnly,
    this.iconLeft,
    this.iconRight,
    this.icon,
    this.size,
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final sizeToWidth = {
      ButtonSize.large: MediaQuery.of(context).size.width - 40,
      ButtonSize.medium: 224.0,
      ButtonSize.small: 98.0,
    };

    final sizeToHeight = {
      ButtonSize.large: 56.0,
      ButtonSize.medium: 46.0,
      ButtonSize.small: 36.0,
    };

    final sizeToTextStyle = {
      ButtonSize.large: TraverTypography.BodyText300Regular,
      ButtonSize.medium: TraverTypography.BodyText200Regular,
      ButtonSize.small: TraverTypography.BodyText100Regular,
    };

    return MaterialButton(
      elevation: 0,
      onPressed: isDisabled ? null : onTap,
      color: TraverColors.brandDefault,
      disabledColor: TraverColors.brandLight100.withOpacity(0.5),
      padding: EdgeInsets.zero,
      splashColor: TraverColors.brandDefault.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      animationDuration: const Duration(milliseconds: 150),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: isIconOnly
          ? Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(90)),
              child: Icon(
                icon,
                size: 12,
              ),
            )
          : Container(
              height: sizeToHeight[size]!,
              width: sizeToWidth[size]!,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconLeft,
                    size: 12,
                  ),
                  Text(
                    text,
                    style: sizeToTextStyle[size]!(
                        color: TraverColors.blackDark900),
                  ),
                  Icon(
                    iconRight,
                    size: 12,
                  ),
                ],
              )),
    );
  }
}

class TraverSecondaryButton extends StatelessWidget {
  final ButtonSize size;
  final VoidCallback onTap;
  final String text;
  final bool isDisabled;
  final bool isIconOnly;
  final IconData? iconLeft;
  final IconData? iconRight;
  final IconData? icon;

  const TraverSecondaryButton({
    required this.size,
    required this.onTap,
    required this.text,
    required this.isDisabled,
    required this.isIconOnly,
    this.iconLeft,
    this.iconRight,
    this.icon,
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final sizeToWidth = {
      ButtonSize.large: MediaQuery.of(context).size.width - 40,
      ButtonSize.medium: 224.0,
      ButtonSize.small: 98.0,
    };

    final sizeToHeight = {
      ButtonSize.large: 56.0,
      ButtonSize.medium: 46.0,
      ButtonSize.small: 36.0,
    };

    final sizeToTextStyle = {
      ButtonSize.large: TraverTypography.BodyText300Regular,
      ButtonSize.medium: TraverTypography.BodyText200Regular,
      ButtonSize.small: TraverTypography.BodyText100Regular,
    };

    return MaterialButton(
      elevation: 0,
      onPressed: isDisabled ? null : onTap,
      color: TraverColors.white,
      disabledColor: TraverColors.white.withOpacity(0.1),
      padding: EdgeInsets.zero,
      splashColor: TraverColors.brandDefault.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: TraverColors.blackLight200),
        borderRadius: BorderRadius.circular(20),
      ),
      animationDuration: const Duration(milliseconds: 150),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: isIconOnly
          ? Container(
              width: 48,
              height: 48,
              child: Icon(
                icon,
                size: 12,
              ),
            )
          : Container(
              height: sizeToHeight[size]!,
              width: sizeToWidth[size]!,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconLeft,
                    size: 12,
                  ),
                  Text(
                    text,
                    style: sizeToTextStyle[size]!(
                        color: TraverColors.blackDark900),
                  ),
                  Icon(
                    iconRight,
                    size: 12,
                  ),
                ],
              )),
    );
  }
}

class TraverIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;
  const TraverIconButton({
    required this.icon,
    required this.onTap,
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: TraverColors.blackLight200,
            borderRadius: BorderRadius.circular(90)),
        width: 48,
        height: 48,
        child: icon,
      ),
    );
  }
}

enum ButtonSize {
  large,
  medium,
  small,
}
