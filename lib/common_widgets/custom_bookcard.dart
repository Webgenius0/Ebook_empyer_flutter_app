import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Container(
      constraints: BoxConstraints(
        maxWidth: 165.w,
      ),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(12.r), // Rounded corners for the card
        child: Material(
          color: Colors.transparent, // Make sure no background color is applied
          child: Container(
            padding: EdgeInsets.all(8.w), // Padding inside the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Container
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    imageUrl,
                    width: 165.w,
                    height: 226.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
                // Title
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextFontStyle.textStyle14c212121UrbanistW500,
                ),
                SizedBox(height: 6.h),
                // Rating and Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: AppColors.c4B586B, size: 14.sp),
                        SizedBox(width: 4.w),
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
        ),
      ),
    );
  }
}
