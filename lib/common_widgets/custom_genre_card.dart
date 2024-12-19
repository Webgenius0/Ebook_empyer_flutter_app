import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGenreCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  final double? width;

  const CustomGenreCard({
    super.key,
    required this.text,
    required this.imageUrl,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 165.w,
      width: width,
      height: 72.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 9.w, bottom: 12.h),
          child: Text(
            text,
            style: TextFontStyle.textStyle16cFFFFFFBUrbanistW500
                .copyWith(color: AppColors.cFFFFFF),
          ),
        ),
      ),
    );
  }
}
