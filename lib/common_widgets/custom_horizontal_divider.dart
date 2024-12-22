import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Assuming you're using `flutter_screenutil` for responsive sizing

class CustomHorizontalDivider extends StatelessWidget {
  final double thickness;
  final double width;
  final Color color;

  const CustomHorizontalDivider({
    super.key,
    this.thickness = 1.0,
    this.width = double.infinity,
    this.color = AppColors.cE2E2E2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: thickness.h, // Using `flutter_screenutil` for responsive height
      color: color,
    );
  }
}
