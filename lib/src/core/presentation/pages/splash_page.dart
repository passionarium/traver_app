import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../feature/sign_in/presentation/pages/sign_in_page.dart';
import '../../../style/colors.dart';
import '../../../style/typography.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (final BuildContext context) => const SignInPage())));
    return Scaffold(
      backgroundColor: TraverColors.white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo/logo_black.png',
              width: 200,
              height: 100,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                S.current.version + ' 1.1.0',
                style: TraverTypography.BodyText300Regular(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
