import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/widgets/components/button.dart';
import '../../../../style/typography.dart';
import 'explore_page.dart';

class SuccessRegisterPage extends StatelessWidget {
  const SuccessRegisterPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/auth/location_marker.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.successfully_created_an_account,
                style: TraverTypography.headLine600(),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                S.current.you_can_explore_any_place,
                style: TraverTypography.BodyText300Regular(),
              ),
            ]),
            Positioned(
              bottom: 0,
              child: TraverPrimaryButton(
                size: ButtonSize.large,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (final context) => const ExplorePage()));
                },
                text: S.current.lets_explore,
                isDisabled: false,
                isIconOnly: false,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
