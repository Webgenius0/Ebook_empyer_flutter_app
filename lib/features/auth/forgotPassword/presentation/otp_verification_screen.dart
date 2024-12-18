// ignore_for_file: use_super_parameters, library_private_types_in_public_api

import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/common_widgets/otp_box.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();
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
                      "You've Got Mail",
                      style: TextFontStyle.textStyle24c000000UrbanistW600,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "We Fave sent the OTP verification code to your\nemail address Chock your email and enter the\ncode below,",
                      style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                    ),
                    SizedBox(height: 40.h),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OTPBox(controller: otpController1),
                        OTPBox(controller: otpController2),
                        OTPBox(controller: otpController3),
                        OTPBox(controller: otpController4),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't receive email?",
                          style: TextFontStyle.textStyle16c000000UrbanistW400,
                        ),
                        Text(
                          " Resend It",
                          style: TextFontStyle.textStyle14c743DFFUrbanistW600,
                        )
                      ],
                    ),
                    SizedBox(height: 50.h),
                    CustomButtonOne(
                      text: "Confirm",
                      backgroundColor: AppColors.c743DFF,
                      onPressed: () {
                        NavigationService.navigateTo(
                            Routes.createNewPasswordScreen);
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
