// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EyeProtectionScreen extends StatefulWidget {
  const EyeProtectionScreen({super.key});

  @override
  _EyeProtectionScreenState createState() => _EyeProtectionScreenState();
}

class _EyeProtectionScreenState extends State<EyeProtectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cD0D0A4.withOpacity(0.7),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
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
          centerTitle: true,
          title: Text('One Hundred Years.....',
              style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
                  fontSize: 20.sp,
                  letterSpacing: -0.4.sp,
                  color: AppColors.c2B2B2B)),
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                UIHelper.verticalSpace(14.h),
                Text(
                    'The yew hedges muffled the sound of the men\'s footsteps. There was a rustle somewhere to their right: Yaxley drew his wand again, pointing it over his companion\'s head. but the source of the noise proved to be nothing more than a pure-white peacock, strutting majestically along the top of the hedge \n\n"He always did himself well, Lucius. Peacocks ... Yaxley thrust his wand back under his cloak with a snort.”\n\n A handsome manor house grew out of the darkness at the end of the straight drive, lights glinting in the diamond-paned downstairs windows Somewhere in the dark garden beyond the hedge a fountain was playing, Gravel crackled beneath their feet as Snape and Yaxley sped toward the front door. which swung inward at their approach, though nobody had visibly opened it. \n\n          The hallway was large, dimly lit, and sumptuously decorated, with a magnificent carpet covering most of the stone floor. The eyes Of the pale-faced portraits on the walls followed Snape and Yaxley as they strode',
                    style:
                        TextFontStyle.textStyle14c4B586BUrbanistW600.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.c212121,
                      fontWeight: FontWeight.w400,
                      height: 1.64,
                    ))
              ],
            ),
          ),
        ));
  }
}
