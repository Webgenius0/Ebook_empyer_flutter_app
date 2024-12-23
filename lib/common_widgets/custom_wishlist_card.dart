import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomWishlistCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final List<String> labels;
  final double rating;
  final double price;
  final Function(int)? onOptionSelected; // Callback for menu item selection

  const CustomWishlistCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.author,
    required this.labels,
    required this.rating,
    required this.price,
    this.onOptionSelected, // Pass the callback from outside
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: Row(
        children: [
          SizedBox(
            width: 165.w,
            child: Image.asset(imagePath),
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
                          const SizedBox(width: 10), // Add width between labels
                      ],
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: AppColors.c4B586B, size: 14.sp),
                    UIHelper.horizontalSpace(4.h),
                    Text(
                      rating.toStringAsFixed(1),
                      style: TextFontStyle.textStyle10c4B586BUrbanistW500
                          .copyWith(fontSize: 14.sp),
                    ),
                  ],
                ),
                Text(
                  "\$${price.toStringAsFixed(2)}",
                  style: TextFontStyle.textStyle10c4B586BUrbanistW500
                      .copyWith(fontSize: 14.sp),
                ),
              ],
            ),
          ),
          Column(
            children: [
              UIHelper.verticalSpace(10.h),
              PopupMenuButton<int>(
                icon: SvgPicture.asset(Assets.icons.option),
                onSelected: onOptionSelected, // Use the callback here
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.translate(
                          offset: Offset(5.w, 0),
                          child: SvgPicture.asset(
                            Assets.icons.remove,
                            height: 16.h,
                            width: 16.h,
                          ),
                        ),
                        Text(
                          "Remove from Wishlist",
                          style: TextFontStyle.textStyle20c212121UrbanistW600
                              .copyWith(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(Assets.icons.option),
                        Text(
                          "About Ebook Empyer",
                          style: TextFontStyle.textStyle20c212121UrbanistW600
                              .copyWith(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
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
