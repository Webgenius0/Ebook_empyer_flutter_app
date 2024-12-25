import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final List<String> labels;
  final double rating;
  final double price;

  const BookItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.author,
    required this.labels,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 226.h,
      width: 342.w,
      child: Row(
        children: [
          SizedBox(
            width: 165.w,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          UIHelper.horizontalSpace(10.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextFontStyle.textStyle14c212121UrbanistW600,
                ),
                Text(
                  "Author: $author",
                  style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (int i = 0; i < labels.length; i++) ...[
                        buildLabel(labels[i]),
                        if (i != labels.length - 1)
                          UIHelper.horizontalSpace(
                              4.w), // Add width between labels
                      ],
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.star1),
                        // Icon(Icons.star, color: AppColors.c4B586B, size: 14.sp),
                        UIHelper.horizontalSpace(4.h),
                        Text(
                          rating.toStringAsFixed(1),
                          style: TextFontStyle.textStyle10c4B586BUrbanistW500,
                        ),
                      ],
                    ),
                    Text(
                      "\$${price.toStringAsFixed(2)}",
                      style: TextFontStyle.textStyle10c4B586BUrbanistW500,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget buildLabel(String label) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: AppColors.cF0F0F0,
  //       borderRadius: BorderRadius.circular(5.0),
  //     ),
  //     height: 19.h,
  //     width: 44.w,
  //     child: Center(
  //       child: Text(
  //         label,
  //         style: TextFontStyle.textStyle8c4B586BUrbanistW400,
  //       ),
  //     ),
  //   );
  // }
}

Widget buildLabel(String label) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.cF0F0F0,
      borderRadius: BorderRadius.circular(5.0),
    ),
    padding:
        EdgeInsets.symmetric(horizontal: 8.w), // Add padding for better spacing
    height: 19.h,
    child: Center(
      child: Text(
        label,
        style: TextFontStyle.textStyle8c4B586BUrbanistW400,
        overflow: TextOverflow.ellipsis, // Ensure text doesn't overflow
        maxLines: 1,
      ),
    ),
  );
}
