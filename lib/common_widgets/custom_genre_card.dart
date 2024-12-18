import 'package:abdilahi/constants/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGenreCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  final double padding;
  final double borderRadius;

  const CustomGenreCard({
    super.key,
    required this.text,
    this.padding = 8.0,
    required this.imageUrl,
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      height: 72.h,
      padding: EdgeInsets.symmetric(vertical: padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          // Image with rounded corners
          ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 72.h,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            bottom: 10.h,
            left: 10.w,
            child: Text(
              text,
              style: TextFontStyle
                  .textStyle16cFFFFFFBUrbanistW500, // Your custom style
            ),
          ),
        ],
      ),
    );
  }
}
