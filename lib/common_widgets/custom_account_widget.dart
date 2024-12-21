// ignore_for_file: deprecated_member_use

import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAccountWidget extends StatelessWidget {
  final String icon;
  // final Color iconColor;
  final String text;
  final void Function()? onTap;
  final bool showDivider;

  // ignore: use_super_parameters
  const CustomAccountWidget({
    Key? key,
    required this.icon,
    // required this.iconColor,
    required this.text,
    required this.onTap,
    this.showDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    height: 40.h,
                    width: 40.w,
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      color: AppColors.c743DFF.withOpacity(0.16),
                    ),
                    child: SvgPicture.asset(
                      icon,
                      // color: iconColor,
                    )),
                UIHelper.horizontalSpace(16.w), // Horizontal spacing
                Text(text,
                    style: TextFontStyle.textStyle14c212121UrbanistW600
                        .copyWith(fontSize: 16.sp, color: AppColors.c212121)),

                const Spacer(),
                SvgPicture.asset(
                  Assets.icons.arrowRightTwo,
                  width: 16.w,
                  height: 16.h,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            UIHelper.verticalSpace(10.h),
            if (showDivider)
              const Divider(
                thickness: 1,
                color: AppColors.cEBEBEB,
              ),
          ],
        ),
      ),
    );
  }
}
