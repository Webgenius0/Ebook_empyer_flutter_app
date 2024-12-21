// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/common_widgets/custom_account_widget.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AccountFullScreen extends StatefulWidget {
  // ignore: use_super_parameters
  const AccountFullScreen({Key? key}) : super(key: key);

  @override
  _AccountFullScreenState createState() => _AccountFullScreenState();
}

class _AccountFullScreenState extends State<AccountFullScreen> {
  final List<Map<String, dynamic>> items = [
    {
      'icon': Assets.icons.profile, // Replace with your asset path
      'text': 'Personal Info',
      // 'iconColor': AppColors.c743DFF,
      // 'route': PersonalInfoScreen(),
      // Replace with your actual screen.
    },
    {
      'icon': Assets.icons.notification, // Replace with your asset path
      'text': 'Notification',
      // 'iconColor': AppColors.c743DFF,
      // 'route': NotificationScreeen(),
      // Replace with your actual screen.
    },
    {
      'icon': Assets.icons.payment, // Replace with your asset path
      'text': 'Payment Methods',
      // 'iconColor': AppColors.c743DFF,
      // 'route': FaqScreen(),
      // Replace with your actual screen.
    },
    {
      'icon': Assets.icons.helpCenter, // Replace with your asset path
      'text': 'Help Center',
      // 'iconColor': AppColors.c743DFF,
      // 'route': FaqScreen(),
      // Replace with your actual screen.
    },
    {
      'icon': Assets.icons.aboutUs, // Replace with your asset path
      'text': 'About Us',
      // 'iconColor': Colors.blue,
      // 'route': FaqScreen(),
      // Replace with your actual screen.
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cF4F5F6,
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 85,
          backgroundColor: AppColors.cF4F5F6,
          leading: IconButton(
            onPressed: () {
              // Get.back();
            },
            icon: SvgPicture.asset(
              Assets.icons.ebookSmall,
              width: 40.w,
              height: 24.h,
              fit: BoxFit.contain,
            ),
          ),
          centerTitle: true,
          title: Text('Account',
              style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
                  fontSize: 20.sp,
                  letterSpacing: -0.4.sp,
                  color: AppColors.c2B2B2B)),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                UIHelper.verticalSpace(24.h),

                //upgrade plan section start
                GestureDetector(
                  onTap: () {
                    // NavigationService.navigateTo(Routes.paymentMethodScreen);
                  },
                  child: Container(
                    height: 104.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.c6636EE,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.icons.subscriptionImg),
                        UIHelper.horizontalSpace(12.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Upgrade Plan Now!',
                                style:
                                    TextFontStyle.textStyle18cF3F3F3InterW600),
                            UIHelper.verticalSpace(8.h),
                            Text(
                                'Enjoy all the benefits and explore more \npossibilities',
                                style: TextFontStyle.textStyle18cF3F3F3InterW600
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: AppColors.cF3F3F3)),
                            UIHelper.verticalSpace(8.h),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                UIHelper.verticalSpace(24.h),
                // andrew anisley section start
                GestureDetector(
                  onTap: () {
                    // NavigationService.navigateTo(Routes.paymentMethodScreen);
                  },
                  child: Container(
                    height: 90.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.cFFFFFF,
                    ),
                    child: Row(
                      children: [
                        Image.asset(Assets.images.person.path),
                        UIHelper.horizontalSpace(12.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Andrew Ainsley',
                                style: TextFontStyle
                                    .textStyle13c743DFFUrbanistW600
                                    .copyWith(
                                        fontSize: 18.sp,
                                        letterSpacing: -0.36.sp,
                                        color: AppColors.c212121)),
                            UIHelper.verticalSpace(8.h),
                            Text('andrew.ainsley@mail.com',
                                style: TextFontStyle
                                    .textStyle16c000000UrbanistW400
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: AppColors.c545A63)),
                            UIHelper.verticalSpace(8.h),
                          ],
                        ),
                        UIHelper.horizontalSpace(12.w),
                        const Spacer(),
                        SvgPicture.asset(
                          Assets.icons.profileEdit,
                          width: 24.w,
                          height: 24.h,
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  ),
                ),
                UIHelper.verticalSpace(24.h),

                // personal info details section start
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.cFFFFFF,
                  ),
                  child: ListView.builder(
                    itemCount: items.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      final isLastItem = index == items.length - 1;
                      return Column(
                        children: [
                          UIHelper.verticalSpace(14.h),
                          CustomAccountWidget(
                            icon: item['icon'],
                            // iconColor: item['iconColor'],
                            text: item['text'],
                            onTap: () {
                              switch (index) {
                                case 0: // Personal Info
                                  NavigationService.navigateTo(
                                      Routes.notificationScreen);
                                  break;
                                case 1: // Notification
                                  NavigationService.navigateTo(
                                      Routes.notificationScreen);
                                  break;
                                case 2: // Payment Methods
                                  NavigationService.navigateTo(
                                      Routes.paymentMethodScreen);
                                  break;
                                case 3: // Help Center
                                  NavigationService.navigateTo(
                                      Routes.notificationScreen);
                                  break;
                                case 4: // About Us
                                  NavigationService.navigateTo(
                                      Routes.notificationScreen);
                                  break;
                                default:
                                  break;
                              }
                            },
                            showDivider: !isLastItem,
                          ),
                          if (isLastItem) UIHelper.verticalSpace(10.h),
                        ],
                      );
                    },
                  ),
                ),
                UIHelper.verticalSpace(24.h),
                GestureDetector(
                  onTap: () =>
                      NavigationService.navigateTo(Routes.signinScreen),
                  child: Container(
                    height: 72.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.cFFFFFF,
                    ),
                    child: Row(
                      children: [
                        Container(
                            height: 40.h,
                            width: 40.w,
                            padding: EdgeInsets.all(10.sp),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: Colors.red.withOpacity(0.11),
                            ),
                            child: SvgPicture.asset(
                              Assets.icons.logout,
                            )),
                        UIHelper.horizontalSpace(16.w), // Horizontal spacing

                        Text('Log Out',
                            style: TextFontStyle.textStyle14c4B586BUrbanistW600
                                .copyWith(
                                    fontSize: 14.sp, color: AppColors.cFF0000)),
                      ],
                    ),
                  ),
                ),
                UIHelper.verticalSpace(24.h),
              ],
            ),
          ),
        ));
  }
}
