import 'package:abdilahi/common_widgets/custom_elevated_button.dart';
import 'package:abdilahi/common_widgets/custom_subscription_text.dart';
import 'package:abdilahi/common_widgets/custom_subscription_widget.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/payment/presentation/selected_subscription_screen.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionPlanScreen extends StatefulWidget {
  const SubscriptionPlanScreen({super.key});

  @override
  State<SubscriptionPlanScreen> createState() => _SubscriptionPlanScreenState();
}

class _SubscriptionPlanScreenState extends State<SubscriptionPlanScreen> {
  String? selectedPlan;

  void selectPlan(String plan) {
    setState(() {
      selectedPlan = plan;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> weeklyPlan = [
      'Access to Weekly Book Chapters.',
      'Exclusive Insights and Discussions on Chapters.',
      'Guided Self-Reflection and Exercises.',
      'Ad-Free Reading Experience.',
    ];

    final List<String> annualPlan = [
      'Full Access to All Book Chapters.',
      'Exclusive Author Insights and Bonus Content.',
      'Personalized Growth and Reflection Tools.',
      'Ad-Free Reading Experience for the Year.',
    ];

    final List<String> monthlyPlan = [
      'Access to Monthly Book Chapters.',
      'Monthly Author Q&A Sessions.',
      'Progress Tracker and Self-Improvement Exercises.',
      'Ad-Free Reading Experience.',
    ];

    List<String> selectedPlanContent = [];

    if (selectedPlan == "Annual Plan") {
      selectedPlanContent = annualPlan;
    } else if (selectedPlan == "Weekly Plan") {
      selectedPlanContent = weeklyPlan;
    } else if (selectedPlan == "Monthly Plan") {
      selectedPlanContent = monthlyPlan;
    } else {
      selectedPlanContent = [];
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            children: [
              UIHelper.verticalSpace(16.h),
              Text(
                'Subscription plans',
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
                selectedPlan != null
                    ? '$selectedPlan'
                    : 'Select a Plan', // Dynamically set the title based on selected plan
                style: TextFontStyle.textStyle24c222222UrbanistW600.copyWith(
                  color: AppColors.c000000,
                ),
              ),
              UIHelper.verticalSpace(16.h),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: selectedPlanContent.length,
                itemBuilder: (context, index) {
                  final plan = selectedPlanContent[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: customSubscriptionText(text: plan),
                  );
                },
              ),
              UIHelper.verticalSpace(50.h),
              CustomSubscriptionButton(
                containerColor: selectedPlan == 'Weekly Plan'
                    ? AppColors.c743DFF
                    : AppColors.cF8F8F8,
                leftText: 'Weekly Plan',
                leftTextColor:
                    selectedPlan == 'Weekly Plan' ? Colors.white : Colors.black,
                rightText1: '3.33',
                rightText2: ' /weekly',
                rightTextColor1: selectedPlan == 'Weekly Plan'
                    ? Colors.white
                    : AppColors.c222222,
                rightTextColor2: selectedPlan == 'Weekly Plan'
                    ? Colors.white.withOpacity(0.72)
                    : AppColors.c222222.withOpacity(0.72),
                onTap: () => selectPlan('Weekly Plan'),
              ),
              UIHelper.verticalSpace(10.h),
              CustomSubscriptionButton(
                containerColor: selectedPlan == 'Monthly Plan'
                    ? AppColors.c743DFF
                    : AppColors.cF8F8F8,
                leftText: 'Monthly Plan',
                leftTextColor: selectedPlan == 'Monthly Plan'
                    ? Colors.white
                    : Colors.black,
                rightText1: '6.88',
                rightText2: ' /monthly',
                rightTextColor1: selectedPlan == 'Monthly Plan'
                    ? Colors.white
                    : AppColors.c222222,
                rightTextColor2: selectedPlan == 'Monthly Plan'
                    ? Colors.white.withOpacity(0.72)
                    : AppColors.c222222.withOpacity(0.72),
                onTap: () => selectPlan('Monthly Plan'),
              ),
              UIHelper.verticalSpace(10.h),
              CustomSubscriptionButton(
                containerColor: selectedPlan == 'Annual Plan'
                    ? AppColors.c743DFF
                    : AppColors.cF8F8F8,
                leftText: 'Annual Plan',
                leftTextColor:
                    selectedPlan == 'Annual Plan' ? Colors.white : Colors.black,
                rightText1: '34.44',
                rightText2: ' /annually',
                rightTextColor1: selectedPlan == 'Annual Plan'
                    ? Colors.white
                    : AppColors.c222222,
                rightTextColor2: selectedPlan == 'Annual Plan'
                    ? Colors.white.withOpacity(0.72)
                    : AppColors.c222222.withOpacity(0.72),
                onTap: () => selectPlan('Annual Plan'),
              ),
              UIHelper.verticalSpace(40.h),
              customElevatedButton(
                onPressed: () {
                  if (selectedPlan != null) {
                    NavigationService.navigateToWithArgs(
                        Routes.selectedSubscriptionScreen, {
                      "plan_name": selectedPlan!,
                      "plan_list": selectedPlanContent
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Please select a plan first!')),
                    );
                  }
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
