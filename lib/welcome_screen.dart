import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/common_widgets/stepper_widget.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            Assets.images.welcome2Screen.path,
            fit: BoxFit.cover,
          )),
          Positioned(
            top: 440.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Welcome Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to ",
                        style: TextFontStyle.textStyle24c000000UrbanistW600,
                      ),
                      Text(
                        "Empyer 👋",
                        style: TextFontStyle.textStyle24c743DFFUrbanistW600,
                      ),
                    ],
                  ),

                  UIHelper.verticalSpace(20.h),

                  Text(
                    "The Number One Best Ebook Store & Reader\n Application in this Century",
                    textAlign: TextAlign.center,
                    style: TextFontStyle.textStyle16c212121UrbanistW400
                        .copyWith(height: 1.8),
                  ),

                  UIHelper.verticalSpace(50.h),

                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 56.h,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      decoration: BoxDecoration(
                        color: AppColors.cFFFFFF,
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            // NavigationService.navigateTo(Routes.homeScreen);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(Assets.icons.googleIcon),
                              UIHelper.horizontalSpace(8.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Continue with",
                                    style: TextFontStyle
                                        .textStyle16c212121UrbanistW600,
                                  ),
                                  Text(
                                    "Google",
                                    style: TextFontStyle
                                        .textStyle16c212121UrbanistW600,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  UIHelper.verticalSpace(16.h),

                  CustomButtonOne(
                    text: "Get Started",
                    backgroundColor: AppColors.c743DFF,
                    onPressed: () {
                      // NavigationService.navigateTo(Routes.signUpGenderScreen);
                      NavigationService.navigateTo(Routes.stepperWidget);
                    },
                    style: TextFontStyle.textStyle14cFFFFFFUrbanistW500,
                  ),

                  UIHelper.verticalSpace(16.h),

                  CustomButtonOne(
                    text: "I Have Already an Account",
                    backgroundColor: AppColors.cD7C8FF,
                    onPressed: () {
                      NavigationService.navigateTo(Routes.signinScreen);
                    },
                    style: TextFontStyle.textStyle14c5312F8UrbanistW500,
                  ),
                ],
              ),
            ),
          ),
          // )
        ],
      ),
    );
  }
}
