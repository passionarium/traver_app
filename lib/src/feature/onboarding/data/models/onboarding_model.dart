

import '../../../../../../generated/l10n.dart';

class OnBoardingModel {
  const OnBoardingModel({required this.title, required this.subtitle, required this.backgroundImage});

  final String title;
  final String subtitle;
  final String backgroundImage;
}


final List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: S.current.onboarding_1_title,
    subtitle: S.current.onboarding_1_subtitle,
    backgroundImage: 'assets/images/onboarding/1.png',
  ),
  OnBoardingModel(
    title: S.current.onboarding_2_title,
    subtitle: S.current.onboarding_2_subtitle,
    backgroundImage: 'assets/images/onboarding/2.png',
  ),
  OnBoardingModel(
    title: S.current.onboarding_3_title,
    subtitle: S.current.onboarding_3_subtitle,
    backgroundImage: 'assets/images/onboarding/3.png',
  ),
];