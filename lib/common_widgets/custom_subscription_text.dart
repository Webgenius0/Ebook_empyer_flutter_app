import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget customSubscriptionText({required String text}) {
  return Row(
    children: [
      CircleAvatar(
        backgroundColor: AppColors.c743DFF,
        radius: 13.r, // Increase the radius for a larger CircleAvatar
        child: SvgPicture.asset(
          Assets.icons.check,
          height: 13.r, // Match the icon size to the CircleAvatar
          width: 13.r,
        ),
      ),
      UIHelper.horizontalSpace(16.w),
      Text(text,
          style: TextFontStyle.textStyle16cFFFFFFUrbanistW600.copyWith(
              color: AppColors.c222222,
              fontWeight: FontWeight.w600,
              fontSize: 13.sp)),
    ],
  );
}
