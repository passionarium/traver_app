import 'package:flutter/material.dart';

import '../../../../style/colors.dart';

class TraverBasePage extends StatelessWidget {
  final String title;
  final Widget body;
  final bool canGoBack;
  final List<Widget> actions;
  final bool resizeToAvoidBottomInset;
  final PreferredSizeWidget? customAppBar;

  /// Executes code along with closing the page
  final VoidCallback? onGoBack;

  /// Makes the back button not close the page, but runs the callback instead
  final VoidCallback? customGoBackCallback;
  final bool darkenBackground;
  final Widget? bottomNavigationBar;

  const TraverBasePage({
    required this.body,
    final Key? key,
    this.title = '',
    this.canGoBack = true,
    this.actions = const [],
    this.resizeToAvoidBottomInset = false,
    this.onGoBack,
    this.customGoBackCallback,
    this.darkenBackground = false,
    this.bottomNavigationBar,
    this.customAppBar,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: ColoredBox(
            color: TraverColors.white,
          ),
        ),
        Scaffold(
          backgroundColor: darkenBackground
              ? Colors.black.withOpacity(0.5)
              : Colors.transparent,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          extendBodyBehindAppBar: false,
          bottomNavigationBar: bottomNavigationBar,
          appBar: customAppBar,
          body: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: body,
            ),
          ),
        ),
      ],
    );
  }
}
