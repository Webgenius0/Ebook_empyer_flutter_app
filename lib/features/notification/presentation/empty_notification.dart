import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationEmptyScreen extends StatefulWidget {
  const NotificationEmptyScreen({super.key});

  @override
  State<NotificationEmptyScreen> createState() =>
      _NotificationEmptyScreenState();
}

class _NotificationEmptyScreenState extends State<NotificationEmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              Assets.icons.arrowBack,
              height: 24.h,
              width: 24.w,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Notification',
            style: TextFontStyle.textStyle20c2B2B2BUrbanistW600),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                NavigationService.navigateTo(Routes.notificationScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 18.w),
                child: SvgPicture.asset(Assets.icons.setting),
              ))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      height: 240.h,
                      width: 240.w,
                      child: SvgPicture.asset(Assets.icons.emptyNotification)),
                  Text(
                    'Empty',
                    style:
                        TextFontStyle.textStyle20c2B2B2BUrbanistW600.copyWith(
                      color: AppColors.c000000,
                      letterSpacing: -0.48.sp,
                    ),
                  ),
                  UIHelper.verticalSpace(12.h),
                  Text(
                    'You dont have any notification at this time',
                    style: TextFontStyle.textStyle20c2B2B2BUrbanistW400
                        .copyWith(color: AppColors.c000000, fontSize: 14.sp),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
