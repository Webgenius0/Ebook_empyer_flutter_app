import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  final bool isPasswordField;
  final String hintText;
  final Color borderColor;
  final Color backgroundColor;
  final Color hintTextColor;
  final Color textColor;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController? controller;

  // Constructor with default values
  const CustomTextFormField({
    super.key,
    this.isPasswordField = false,
    this.hintText = 'Enter text',
    this.borderColor = AppColors.c926BF4,
    this.backgroundColor = AppColors.cFFFFFF,
    this.hintTextColor = AppColors.c4B586B,
    this.textColor = AppColors.c4B586B,
    this.controller,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText =
        widget.isPasswordField; // Set initial value based on the argument
  }

  @override
  Widget build(BuildContext context) {
    // Define the custom TextStyle for hint text
    TextStyle hintTextStyle = TextFontStyle.textStyle14c4B586BUrbanistW600;

    return Container(
      width: 342.w,
      height: 51.h,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        border: Border.all(color: widget.borderColor),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextFormField(
        obscureText: _obscureText,
        controller: widget.controller,
        style: TextStyle(color: widget.textColor),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: hintTextStyle, // Apply custom TextStyle to hintText
          border: InputBorder.none, // Removes the default border
          contentPadding: widget.contentPadding,
          suffixIcon: widget.isPasswordField
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.c4B586B,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
