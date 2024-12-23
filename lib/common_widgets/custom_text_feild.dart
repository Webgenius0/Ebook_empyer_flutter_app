// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Custom TextFormField
class CustomTextFormFields extends StatefulWidget {
  final String? hintText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final bool isPrefixIcon;
  final bool readOnly;

  const CustomTextFormFields({
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.isPrefixIcon = false,
    this.readOnly = false,
    super.key,
  });

  @override
  _CustomTextFormFieldsState createState() => _CustomTextFormFieldsState();
}

class _CustomTextFormFieldsState extends State<CustomTextFormFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      padding: EdgeInsets.all(14.sp),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.c55d0ff.withOpacity(0.1), // Background color
        borderRadius: BorderRadius.circular(8.r), // Rounded corners
      ),
      child: TextFormField(
        readOnly: widget.readOnly,
        controller: widget.controller,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 11.h),
          prefixIcon: widget.isPrefixIcon ? widget.prefixIcon : null,
          hintText: widget.hintText,
          hintStyle: TextFontStyle.textStyle13cFFFFFFUrbanistW600.copyWith(
            color: AppColors.c545A63,
            fontSize: 15.sp,
            letterSpacing: -0.32.sp,
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none, // No visible border
        ),
      ),
    );
  }
}
