import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/widgets/components/page_indicator.dart';
import '../../../../style/colors.dart';
import '../../../../style/typography.dart';
import '../../data/models/onboarding_model.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    super.initState();
  }

  final ValueNotifier<int> onBoardingNotifier = ValueNotifier(0);

  @override
  Widget build(final BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: onBoardingNotifier,
      builder: (final _, final notifierValue, final __) {
        return SafeArea(
          child: Scaffold(
            body: AnimatedContainer(
              duration: const Duration(seconds: 2),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      onBoardingList[notifierValue].backgroundImage,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/logo/logo_white.png',
                        width: 73,
                      ),
                      const SizedBox(
                        height: 39,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          onBoardingList[notifierValue].title,
                          style: TraverTypography.headLine800Semibold(
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 39,
                      ),
                      TraverPageIndicator(
                        pageNotifier: onBoardingNotifier,
                        pageCount: onBoardingList.length - 1,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (onBoardingNotifier.value <
                              onBoardingList.length - 1) {
                            onBoardingNotifier.value++;
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: TraverColors.brandDefault,
                          ),
                          width: MediaQuery.of(context).size.width - 40,
                          height: 50,
                          child: Center(
                              child: onBoardingNotifier == 2
                                  ? Text(
                                      S.current.get_started,
                                      style:
                                          TraverTypography.BodyText300Regular(),
                                    )
                                  : Text(
                                      S.current.next,
                                      style:
                                          TraverTypography.BodyText300Regular(),
                                    )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
