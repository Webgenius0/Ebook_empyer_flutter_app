import 'dart:developer';
import 'package:abdilahi/common_widgets/custom_elevated.dart';
import 'package:abdilahi/common_widgets/custom_subscription_text.dart';
import 'package:abdilahi/common_widgets/custom_subscription_widget.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedSubscriptionScreen extends StatefulWidget {
  final String planName;
  final List<String> planDetails;

  // ignore: prefer_const_constructors_in_immutables
  SelectedSubscriptionScreen({
    Key? key,
    required this.planName,
    required this.planDetails,
  }) : super(key: key);

  @override
  State<SelectedSubscriptionScreen> createState() =>
      _SelectedSubscriptionScreenState();
}

class _SelectedSubscriptionScreenState
    extends State<SelectedSubscriptionScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log("Check data receive ${widget.planName}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            children: [
              UIHelper.verticalSpace(16.h),
              Text(
                'Selected Subscription plan',
                style: TextFontStyle.textStyle24c000000UrbanistW600.copyWith(
                    color: AppColors.c2B2B2B,
                    fontSize: 20.sp,
                    letterSpacing: -0.4.sp,
                    fontWeight: FontWeight.w600),
              ),
              UIHelper.verticalSpace(16.h),
              Container(
                width: 342.w,
                height: 125.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(
                    image: AssetImage(Assets.images.subscription.path),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Text(
                widget.planName,
                style: TextFontStyle.textStyle24c222222UrbanistW600.copyWith(
                  color: AppColors.c000000,
                ),
              ),
              UIHelper.verticalSpace(16.h),
              ...widget.planDetails.map((plan) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: customSubscriptionText(
                      text: plan,
                    ),
                  )),
              UIHelper.verticalSpace(50.h),
              if (widget.planName == "Weekly Plan") ...[
                CustomSubscriptionButton(
                  containerColor: AppColors.c743DFF,
                  leftText: "Weekly Plan",
                  rightText1: '3.33',
                  rightText2: ' /weekly',
                  leftTextColor: AppColors.cFFFFFF,
                  rightTextColor1: AppColors.cFFFFFF,
                  rightTextColor2: Colors.white.withOpacity(0.72),
                  onTap: () {
                    // Handle Weekly Plan tap
                  },
                ),
              ],
              if (widget.planName == "Monthly Plan") ...[
                CustomSubscriptionButton(
                    containerColor: AppColors.c743DFF,
                    leftText: "Monthly Plan",
                    rightText1: '6.88',
                    rightText2: ' /monthly',
                    leftTextColor: AppColors.cFFFFFF,
                    rightTextColor1: AppColors.cFFFFFF,
                    rightTextColor2: Colors.white.withOpacity(0.72),
                    onTap: () {}),
              ],
              if (widget.planName == "Annual Plan") ...[
                CustomSubscriptionButton(
                    containerColor: AppColors.c743DFF,
                    leftText: "Annual Plan",
                    rightText1: '34.44',
                    rightText2: ' /annually',
                    leftTextColor: Colors.white,
                    rightTextColor1: AppColors.cFFFFFF,
                    rightTextColor2: Colors.white.withOpacity(0.72),
                    onTap: () {}),
              ],
              UIHelper.verticalSpace(40.h),
              customElevatedButton(
                onPressed: () {
                  NavigationService.navigateTo(
                      Routes.selectPaymentMethodScreen);
                },
                child: Text(
                  'Continue',
                  style: TextFontStyle.textStyle16cFFFFFFUrbanistW600.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.cFFFFFF,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                bgColor: AppColors.c743DFF,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
