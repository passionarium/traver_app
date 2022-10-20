import 'package:flutter/material.dart';

class TraverAppBar extends StatelessWidget {
  final Widget? icon;
  final String? title;
  const TraverAppBar({required this.icon, required this.title, final Key? key})
      : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return AppBar(
      actions: [
        icon ?? const SizedBox.shrink(),
        const SizedBox(
          width: 20,
        ),
        icon ?? const SizedBox.shrink(),
      ],
      title: Text(title ?? ''),
      leading: icon ?? const SizedBox.shrink(),
    );
  }
}
