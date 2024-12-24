import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/common_widgets/custom_textformfield.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                    UIHelper.verticalSpace(16.h),
                    Text(
                      "Forgot Password",
                      style: TextFontStyle.textStyle24c000000UrbanistW600,
                    ),
                    UIHelper.verticalSpace(16.h),
                    Text(
                      "Enter your email address. We will send an OTP code\nfor verification in the next step.",
                      style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                    ),
                    UIHelper.verticalSpace(40.h),
                    Text(
                      "Email",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    UIHelper.verticalSpace(16.h),
                    const CustomTextFormField(
                      hintText: "abc@gmail.com",
                    ),
                    UIHelper.verticalSpace(435.h),
                    CustomButtonOne(
                      text: "Continue",
                      backgroundColor: AppColors.c743DFF,
                      onPressed: () {
                        NavigationService.navigateTo(Routes.otpScreen);
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
