import 'dart:io';
import 'package:abdilahi/common_widgets/stepper_widget.dart';
import 'package:abdilahi/features/Purchased%20Ebook/presentation/purchased_ebook_screen.dart';
import 'package:abdilahi/features/account_and_setting/presentation/faq_screen.dart';
import 'package:abdilahi/features/account_and_setting/presentation/notification_screen.dart';
import 'package:abdilahi/features/account_and_setting/presentation/payment_method_screen.dart';
import 'package:abdilahi/features/account_and_setting/presentation/person_info_screen.dart';
import 'package:abdilahi/features/auth/forgotPassword/presentation/create_new_Password_screen.dart';
import 'package:abdilahi/features/auth/forgotPassword/presentation/forgot_password_screen.dart';
import 'package:abdilahi/features/auth/forgotPassword/presentation/otp_verification_screen.dart';
import 'package:abdilahi/features/auth/signin/presentation/signin_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/complete_profile_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/create_account_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/book_genre_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/select_age_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/gender_screen.dart';
import 'package:abdilahi/features/discover_and_search/presentation/discover_screen.dart';
import 'package:abdilahi/features/discover_and_search/presentation/filter_screen.dart';
import 'package:abdilahi/features/discover_and_search/presentation/search_type_keyword_screen.dart';
import 'package:abdilahi/features/ebook_details/presentaion/about_book_screen.dart';
import 'package:abdilahi/features/ebook_details/presentaion/ebook_details_screen.dart';
import 'package:abdilahi/features/ebook_details/presentaion/rating_and_review_screen.dart';
import 'package:abdilahi/features/ebook_details/presentaion/write_review_screen.dart';
import 'package:abdilahi/features/discover_and_search/presentation/search_screen.dart';
import 'package:abdilahi/features/home/presentation/explore_by_genre_screen.dart';
import 'package:abdilahi/features/home/presentation/home_content_screen.dart';
import 'package:abdilahi/features/home/presentation/home_screen.dart';
import 'package:abdilahi/features/home/presentation/specific_genre.screen.dart';
import 'package:abdilahi/features/notification/presentation/empty_notification.dart';
import 'package:abdilahi/features/notification/presentation/notification-screen.dart';
import 'package:abdilahi/features/payment/presentation/add_new_payment_screen.dart';
import 'package:abdilahi/features/payment/presentation/payment_summary_screen.dart';
import 'package:abdilahi/features/payment/presentation/select_payment_method_screen.dart';
import 'package:abdilahi/features/payment/presentation/select_payment_two_screen.dart';
import 'package:abdilahi/features/read_ebook/read_ebook_navigation_screen.dart';
import 'package:abdilahi/features/wishlist/presentation/wishlist_screen.dart';
import 'package:abdilahi/navigation.dart';
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
  static const String stepperWidget = '/stepperWidget';
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
  static const String specific1GenerScreen = '/specific1GenerScreen';
  static const String notificationEmptyScreen = '/notificationEmptyScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String discoverScreen = '/discoverScreen';
  static const String homeContentScreen = '/homeContentScreen';
  static const String searchScreen = '/SearchScreen';
  static const String filterScreen = '/filterScreen';
  static const String ebookDetailsScreen = '/ebookDetailsScreen';
  static const String aboutBookScreen = '/AboutBookScreen';
  static const String ratingAndReviewScreen = '/ratingAndReviewScreen';
  static const String navigationScreen = '/navigation';
  static const String selectPaymentMethodScreen = '/selectPaymentMethodScreen';
  static const String paymentSummaryScreen = '/paymentSummaryScreen';
  static const String addNewPaymentScreen = '/addNewPaymentScreen';
  static const String selectPaymentTwoScreen = '/selectPaymentTwoScreen';
  static const String wishlistScreen = '/WishlistScreen';
  static const String purchasedEbookScreen = '/purchasedEbookScreen';
  static const String writeReviewScreen = '/writeReviewScreen';
  static const String personalInfoScreen = '/personalInfoScreen';
  static const String paymentMethodScreen = '/paymentMethodScreen';
  static const String faqScreen = '/faqScreen';
  static const String notificationScreeen = '/notificationScreeen';

  static const String readEbookNavigaationScreen =
      '/readEbookNavigaationScreen';

  static const String searchTypeKeywordScreen = '/searchTypeKeywordScreen';
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

      case Routes.notificationEmptyScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const NotificationEmptyScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const NotificationEmptyScreen());

      case Routes.notificationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const NotificationScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const NotificationScreen());

      case Routes.discoverScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const DiscoverScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const DiscoverScreen());

      case Routes.homeContentScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const HomeContentScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const HomeContentScreen());

      case Routes.searchScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const SearchScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SearchScreen());

      // case Routes.filterScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: FilterScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => FilterScreen());

      case Routes.ebookDetailsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const EbookDetailsScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const EbookDetailsScreen());

      case Routes.aboutBookScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const AboutBookScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const AboutBookScreen());

      case Routes.ratingAndReviewScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const RatingAndReviewScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const RatingAndReviewScreen());

      case Routes.navigationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const Navigation(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const Navigation());

      case Routes.selectPaymentMethodScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const SelectPaymentMethodScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const SelectPaymentMethodScreen());

      case Routes.addNewPaymentScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const AddNewPaymentScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const AddNewPaymentScreen());

      case Routes.paymentSummaryScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const PaymentSummaryScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const PaymentSummaryScreen());

      case Routes.selectPaymentTwoScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const SelectPaymentTwoScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const SelectPaymentTwoScreen());

      case Routes.wishlistScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const WishlistScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const WishlistScreen());
      case Routes.purchasedEbookScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const PurchasedEbookScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const PurchasedEbookScreen());

      case Routes.writeReviewScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const WriteReviewScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const WriteReviewScreen());

      case Routes.readEbookNavigaationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ReadEbookNavigaationScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const ReadEbookNavigaationScreen());

      case Routes.personalInfoScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const PersonalInfoScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const PersonalInfoScreen());

      case Routes.paymentMethodScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const PaymentMethodScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const PaymentMethodScreen());

      case Routes.faqScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const FaqScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const FaqScreen());

      case Routes.notificationScreeen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const NotificationScreeen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const NotificationScreeen());

      case Routes.filterScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const FilterScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const FilterScreen());

      case Routes.stepperWidget:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const StepperWidget(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const StepperWidget());

      case Routes.searchTypeKeywordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const SearchTypeKeywordScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const SearchTypeKeywordScreen());

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
