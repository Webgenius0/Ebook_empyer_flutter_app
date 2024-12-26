import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookDetailCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final List<String> labels;
  final double rating;
  final double price;
  final String releaseDate;

  const CustomBookDetailCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.author,
      required this.labels,
      required this.rating,
      required this.price,
      required this.releaseDate});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 226.h,
      child: Row(
        children: [
          SizedBox(
            width: 165.w,
            child: Image.asset(imagePath),
          ),
          UIHelper.horizontalSpace(10.w),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextFontStyle.textStyle14c212121UrbanistW600
                      .copyWith(fontSize: 18.sp),
                ),
                Text(
                  "Author: $author",
                  style: TextFontStyle.textStyle14c4B586BUrbanistW400.copyWith(
                      color: AppColors.c743DFF,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp),
                ),
                Text(
                  releaseDate,
                  style: TextFontStyle.textStyle14c4B586BUrbanistW400.copyWith(
                      color: AppColors.c4B586B,
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: labels.map((label) => buildLabel(label)).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLabel(String label) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cF0F0F0,
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 19.h,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.w, horizontal: 6.h),
        child: Center(
          child: Text(
            label,
            style: TextFontStyle.textStyle8c4B586BUrbanistW400,
          ),
        ),
      ),
    );
  }
}
