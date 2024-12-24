import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/common_widgets/custom_textformfield.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
                      "Hello there 👋",
                      style: TextFontStyle.textStyle24c000000UrbanistW600,
                    ),
                    UIHelper.verticalSpace(16.h),
                    Text(
                      "Please enter your username/email and\npassword to sign in",
                      style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                    ),
                    UIHelper.verticalSpace(40.h),
                    Text(
                      "User Name or Email",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    UIHelper.verticalSpace(16.h),
                    const CustomTextFormField(
                      hintText: "Saklain",
                    ),
                    UIHelper.verticalSpace(16.h),
                    UIHelper.verticalSpace(16.h),
                    Text(
                      "Password",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    UIHelper.verticalSpace(16.h),
                    const CustomTextFormField(
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
                    const Row(
                      children: [
                        Expanded(
                            child:
                                Divider(thickness: 1, color: AppColors.cECECEC))
                      ],
                    ),
                    UIHelper.verticalSpace(30.h),
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          NavigationService.navigateTo(
                              Routes.forgotPasswordScreen);
                        },
                        child: Text(
                          "Forgot Password ",
                          style: TextFontStyle.textStyle14c743DFFUrbanistW600,
                        ),
                      ),
                    ),
                    UIHelper.verticalSpace(30.h),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: AppColors.cECECEC,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text(
                            'or continue With',
                            style: TextFontStyle.textStyle12c000000UrbanistW500,
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: AppColors.cECECEC,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(30.h),
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
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(Assets.icons.googleIcon),
                              UIHelper.horizontalSpace(8.w),
                              Text(
                                "Continue with Google",
                                style: TextFontStyle
                                    .textStyle14c212121UrbanistW500,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    UIHelper.verticalSpace(50.h),
                    CustomButtonOne(
                      text: "Sign In",
                      backgroundColor: AppColors.c743DFF,
                      onPressed: () {
                        NavigationService.navigateTo(Routes.navigationScreen);
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
