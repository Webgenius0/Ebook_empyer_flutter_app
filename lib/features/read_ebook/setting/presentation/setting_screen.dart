import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF5F6F7,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.cF5F6F7,
        title: Text('One Hundred Years.....',
            style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
                fontSize: 20.sp,
                letterSpacing: -0.4.sp,
                color: AppColors.c2B2B2B)),
        leading: IconButton(
          onPressed: () => NavigationService.goBack,
          icon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              Assets.icons.arrowBack,
              height: 24.h,
              width: 24.w,
            ),
          ),
        ),
        actions: [
          InkWell(
              onTap: () {
                NavigationService.navigateTo(Routes.searchScreen);
              },
              child: Padding(
                  padding: EdgeInsets.only(right: 25.w),
                  child: SvgPicture.asset(Assets.icons.searchLogo))),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Open Settings'),
        ),
      ),
    );
  }
}
