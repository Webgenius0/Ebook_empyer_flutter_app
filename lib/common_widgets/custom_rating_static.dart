import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRatingStatic extends StatelessWidget {
  const CustomRatingStatic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                4.0.toString(),
                style: TextFontStyle.textStyle48c333333UrbanistW600,
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 24.sp),
                  Icon(Icons.star, color: Colors.orange, size: 24.sp),
                  Icon(Icons.star, color: Colors.orange, size: 24.sp),
                  Icon(Icons.star, color: Colors.grey, size: 24.sp),
                ],
              ),
              Text(
                "(6.8K reviews)",
                style: TextFontStyle.textStyle48c333333UrbanistW600.copyWith(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          UIHelper.horizontalSpace(30.w),
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.cE2E2E2),
            ),
            width: 2.w,
          ),
          UIHelper.horizontalSpace(30.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 5; i >= 1; i--)
                  _RatingBarRow(
                    rating: i,
                    percentage: [0.80, 0.65, 0.50, 0.20, 0.10][5 - i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _RatingBarRow({required int rating, required double percentage}) {
    return Row(
      children: [
        Text(
          '$rating',
          style: TextFontStyle.textStyle48c333333UrbanistW600.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        UIHelper.horizontalSpace(5),
        const Icon(Icons.star, color: Colors.orange, size: 16),
        UIHelper.horizontalSpace(5),
        Expanded(
          child: LinearProgressIndicator(
            minHeight: 6.h,
            value: percentage,
            backgroundColor: Colors.transparent,
            borderRadius: BorderRadius.circular(40),
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
