import 'dart:ui';
import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/auth/signup/presentation/book_genre_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/complete_profile_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/create_account_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/gender_screen.dart';
import 'package:abdilahi/features/auth/signup/presentation/select_age_screen.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int currentStep = 0;
  final int totalSteps = 5;

  final List<Widget> pages = [
    const GenderScreen(),
    const SelectAgeScreen(),
    const BookGenreScreen(),
    const CompleteProfileScreen(),
    const CreateAccountScreen(),
  ];

  double _calculateProgress() {
    return (currentStep + 1) / totalSteps;
  }

  void showCustomAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 1), () {
          // ignore: use_build_context_synchronously
          Navigator.of(context).pop();
          NavigationService.navigateTo(Routes.navigationScreen);
        });
        return Stack(
          children: [
            // Blurred background
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.2), // Optional dark overlay
              ),
            ),
            Center(
              child: Container(
                width: 342.w, // Adjust width for responsiveness
                height: 486.h, // Adjust height for responsiveness
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Assets.icons.frame),
                    Text(
                      "Sign Up Successful!",
                      style: TextFontStyle.textStyle24c743DFFUrbanistW700
                          .copyWith(decoration: TextDecoration.none),
                    ),
                    UIHelper.verticalSpace(20.h),
                    Text(
                      "Your account has been created\nPlease wait a moment, we are\npreparing for you...",
                      textAlign: TextAlign.center,
                      style: TextFontStyle.textStyle16c000000UrbanistW400
                          .copyWith(decoration: TextDecoration.none),
                    ),
                    UIHelper.verticalSpace(20.h),
                    const CircularProgressIndicator(),
                    UIHelper.verticalSpace(40.h),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentStep + 1);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leadingWidth: 70,
          actions: [
            Padding(
                padding: EdgeInsets.only(
              right: 60.w,
            ))
          ],
          leading: IconButton(
            onPressed: () {
              if (currentStep > 0) {
                setState(() {
                  currentStep--;
                });
              } else {
                NavigationService.goBack();
              }
            },
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: SvgPicture.asset(
                Assets.icons.arrowBack,
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: FractionallySizedBox(
            widthFactor: _calculateProgress(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                child: Expanded(
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 8.h,
                    backgroundColor: AppColors.cEEEEEE,
                    color: AppColors.c743DFF,
                  ),
                ),
              ),
            ),
          ),

          // Row(
          //   children: [
          //     for (int i = 0; i < pages.length; i++)
          //       Expanded(
          //         child: Container(
          //           height: 5.h,
          //           margin: EdgeInsets.symmetric(horizontal: 2.w),
          //           decoration: BoxDecoration(
          //             color: i <= currentStep
          //                 ? AppColors.c743DFF
          //                 : AppColors.cD7C8FF,
          //             borderRadius: BorderRadius.circular(10),
          //           ),
          //         ),
          //       ),
          //   ],
          // ),
        ),
        body: pages[currentStep],
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 25.w),
          child: currentStep == 2
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomButtonOne(
                        text: "Skip",
                        style: TextFontStyle.textStyle16cFFFFFFUrbanistW600
                            .copyWith(color: AppColors.c743DFF),
                        backgroundColor: AppColors.cD7C8FF,
                        onPressed: () {
                          setState(() {
                            currentStep++;

                            //    NavigationService.navigateTo(
                            // Routes.completeProfileScreen);
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: CustomButtonOne(
                        text: "Continue",
                        backgroundColor: AppColors.c743DFF,
                        onPressed: () {
                          setState(() {
                            currentStep++;
                          });
                        },
                        style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
                      ),
                    )
                  ],
                )
              : CustomButtonOne(
                  text: "Continue",
                  backgroundColor: AppColors.c743DFF,
                  onPressed: () {
                    if (currentStep < pages.length - 1) {
                      setState(() {
                        currentStep++;
                      });
                    } else if (currentStep == 4) {
                      showCustomAlert(context);
                    }
                  },
                  style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
                ),
        ));
  }
}
