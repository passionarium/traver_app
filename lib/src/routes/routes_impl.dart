import 'package:flutter/material.dart';

import '../core/presentation/pages/launch_page.dart';



import '../feature/sign_up/presentation/pages/email_page.dart';
import '../feature/sign_up/presentation/pages/full_name_page.dart';
import '../feature/sign_up/presentation/pages/password_page.dart';
import '../feature/sign_up/presentation/pages/success_page.dart';
import '../feature/sign_up/presentation/pages/verification_page.dart';
import '../root/root_page.dart';

import 'routes_builder.dart';
import 'routes_name.dart';

abstract class RouterDevelopImpl {
  static Route<dynamic> generateRoute(final RouteSettings settings) {
    late final Widget mainChild;
    final Map<dynamic, dynamic> map =
        (settings.arguments) as Map<dynamic, dynamic>;

    switch (settings.name) {

      // main pages
      case RouteName.launch:
        mainChild = const LaunchPage();
        break;
      case RouteName.root:
        mainChild = const RootPage();
        break;

      // case RouteName.home:
      //   mainChild = const HomePage();
      //   break;

      // case RouteName.myTrip:
      //   mainChild = const MyTripPage();
      //   break;

      // case RouteName.wishlist:
      //   mainChild = const WishListPage();
      //   break;

      // case RouteName.profile:
      //   mainChild = const ProfilePage();
      //   break;

      // register pages
      case RouteName.register_email:
        mainChild = const EmailPage();
        break;

      case RouteName.register_password:
        mainChild = const PasswordPage();
        break;

      case RouteName.register_full_name:
        mainChild = const FullNamePage();
        break;

      case RouteName.verification_page:
        mainChild = const VerificationPage();
        break;
      case RouteName.register_success_page:
        mainChild = const SuccessRegisterPage();
        break;

      //

      // -----------------
      // Example for map
      // -----------------
      // case RouteName.signUp_usernamee:
      // final SignUpFlowPageArguments args = map[IRouteArgumentsModel.defaultSettingsArgumentKey];
      // mainChild = SignUpUsernamePage(
      //   bloc: args.bloc,
      // );

    }
    return RouteBuilder.builder(mainChild, settings);
  }
}
