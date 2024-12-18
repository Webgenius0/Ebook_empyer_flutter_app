import 'dart:io';
import 'package:abdilahi/features/auth/forgotPassword/presentation/create_new_Password_screen.dart';
import 'package:abdilahi/features/auth/forgotPassword/presentation/forgot_password_screen.dart';
import 'package:abdilahi/features/auth/forgotPassword/presentation/otp_verification_screen.dart';
import 'package:abdilahi/features/auth/signin/presentation/signin_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/complete_profile_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/create_account_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/book_genre_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/select_age_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/gender_screen.dart';
import 'package:abdilahi/features/home/presentation/explore_by_genre_screen.dart';
import 'package:abdilahi/features/home/presentation/home_screen.dart';
import 'package:abdilahi/features/home/presentation/specific_genre.screen.dart';
import 'package:abdilahi/welcome_screen.dart';
import 'package:flutter/cupertino.dart';

import '../loading.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String loadingScreen = '/Loading';
  static const String welcomeScreen = '/welcome_screen';
  static const String signUpGenderScreen = '/signup_gender_screen';
  static const String signupAgeScreen = '/signupAgeScreen';
  static const String signupBookGenre = '/signupBookGenre';
  static const String createAccountScreen = '/CreateAccountScreen';
  static const String signinScreen = '/signInScreen';
  static const String forgotPasswordScreen = '/forgotPasswordScreen';
  static const String createNewPasswordScreen = '/CreateNewPasswordScreen';
  static const String otpScreen = '/otpScreen';
  static const String completeProfileScreen = '/completeProfileScreen';
  static const String homeScreen = '/homeScreen';
  static const String exploreByGenreScreen = '/exploreByGenreScreen';
  static const String specificGenrescreen = '/SpecificGenrescreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loadingScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const Loading(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const Loading());

      case Routes.welcomeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const WelcomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const WelcomeScreen());

      case Routes.signUpGenderScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const GenderScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const GenderScreen());

      case Routes.signupAgeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const SelectAgeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SelectAgeScreen());

      case Routes.signupBookGenre:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const BookGenreScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const BookGenreScreen());

      case Routes.createAccountScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const CreateAccountScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const CreateAccountScreen());

      case Routes.signinScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const SigninScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SigninScreen());

      case Routes.forgotPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ForgotPasswordScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const ForgotPasswordScreen());

      case Routes.createNewPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const CreateNewPasswordScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const CreateNewPasswordScreen());

      case Routes.otpScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const OtpVerificationScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const OtpVerificationScreen());

      case Routes.completeProfileScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const CompleteProfileScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const CompleteProfileScreen());

      case Routes.homeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const HomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const HomeScreen());

      case Routes.exploreByGenreScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ExploreByGenreScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const ExploreByGenreScreen());

      case Routes.specificGenrescreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const SpecificGenrescreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const SpecificGenrescreen());

      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
