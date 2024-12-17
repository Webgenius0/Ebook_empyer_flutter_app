import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonOne extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final TextStyle style;

  const CustomButtonOne({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 56.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:
              BorderRadius.circular(30.r), // You can adjust the radius
        ),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
