// ignore_for_file: prefer_const_constructors
import 'dart:ui';
import 'package:abdilahi/common_widgets/custom_textformfield.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccountScreen> {
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

  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpace(16.h),
                    Text(
                      "Create an Account",
                      style: TextFontStyle.textStyle24c000000UrbanistW600,
                    ),
                    UIHelper.verticalSpace(16.h),
                    Text(
                      "Enter your username, email & password. If you\nforget it, then you have to do forgot password.",
                      style: TextFontStyle.textStyle14c4B586BUrbanistW400
                          .copyWith(height: 1.5),
                    ),
                    UIHelper.verticalSpace(24.h),
                    Text(
                      "User Name",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    UIHelper.verticalSpace(12.h),
                    CustomTextFormField(
                      hintText: "Saklain",
                    ),
                    UIHelper.verticalSpace(20.h),
                    Text(
                      "Email",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    UIHelper.verticalSpace(12.h),
                    CustomTextFormField(
                      hintText: "Email",
                    ),
                    UIHelper.verticalSpace(20.h),
                    Text(
                      "Password",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    UIHelper.verticalSpace(12.h),
                    CustomTextFormField(
                        hintText: "************", isPasswordField: true),
                    UIHelper.verticalSpace(30.h),
                    Text(
                      "Confirm Password",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    UIHelper.verticalSpace(12.h),
                    CustomTextFormField(
                        hintText: "************", isPasswordField: true),
                    UIHelper.verticalSpace(16.h),
                    Transform.translate(
                      offset: Offset(-10.w, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                            activeColor: AppColors.c743DFF,
                          ),
                          Text(
                            "Remember me",
                            style: TextFontStyle.textStyle12c899AB2UrbanistW500,
                          )
                        ],
                      ),
                    ),
                    // UIHelper.verticalSpace(60.h),
                    // CustomButtonOne(
                    //   text: "Continue",
                    //   backgroundColor: AppColors.c743DFF,
                    //   onPressed: () {
                    //     // NavigationService.navigateTo(Routes.signinScreen);
                    // showCustomAlert(context);
                    //   },
                    //   style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
