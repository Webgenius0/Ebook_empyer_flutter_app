import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BookCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final double price;

  const BookCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      child: Column(
        children: [
          SizedBox(
            width: 165.w,
            height: 226.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          UIHelper.verticalSpace(8.h),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextFontStyle.textStyle14c212121UrbanistW600,
          ),
          UIHelper.verticalSpace(6.h),
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
    );
  }
}
