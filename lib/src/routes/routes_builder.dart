import 'package:flutter/material.dart';

abstract class RouteBuilder {
  static PageRouteBuilder<void> builder(
          final Widget widget, final RouteSettings settings) =>
      PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(microseconds: 300),
        reverseTransitionDuration: const Duration(microseconds: 300),
        pageBuilder: (
          final _,
          final __,
          final ___,
        ) =>
            Material(child: widget),
        transitionsBuilder: (final _, final anim, final __, final child) =>
            FadeTransition(
          opacity: anim,
          child: child,
        ),
      );
}
