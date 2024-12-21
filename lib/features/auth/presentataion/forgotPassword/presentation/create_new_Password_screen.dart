// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/common_widgets/custom_textformfield.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui'; // For blur effect

class CreateNewPasswordScreen extends StatefulWidget {
  // ignore: use_super_parameters
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  _CreateNewPasswordScreenState createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  // Method to show the custom alert dialog
  void showCustomAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 1), () {
          NavigationService.navigateTo(Routes.welcomeScreen);
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
                      "Reset Password Successful!",
                      style: TextFontStyle.textStyle24c743DFFUrbanistW700
                          .copyWith(decoration: TextDecoration.none),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Your password has been restored\nPlease wait a moment, we are\npreparing for you...",
                      textAlign: TextAlign.center,
                      style: TextFontStyle.textStyle16c000000UrbanistW400
                          .copyWith(decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CircularProgressIndicator(),
                    SizedBox(height: 40.h),
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 25.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: Offset(-9.w, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(Assets.icons.arrowBack),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "Create New Password",
                      style: TextFontStyle.textStyle24c000000UrbanistW600,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "Enter your new password. If you forget it, then\nyou have to do forgot password.",
                      style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Password",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    SizedBox(height: 16.h),
                    const CustomTextFormField(
                      hintText: "************",
                      isPasswordField: true,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "Confirm Password",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    SizedBox(height: 16.h),
                    const CustomTextFormField(
                      hintText: "************",
                      isPasswordField: true,
                    ),
                    SizedBox(height: 320.h),
                    CustomButtonOne(
                      text: "Continue",
                      backgroundColor: AppColors.c743DFF,
                      onPressed: () {
                        // Show the custom alert dialog when the button is pressed
                        showCustomAlert(context);
                      },
                      style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
                    ),
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
