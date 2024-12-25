// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomDatePickerField extends StatefulWidget {
  final String hintText;
  final Color borderColor;
  final Color backgroundColor;
  final Color hintTextColor;
  final Color textColor;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController? controller;

  const CustomDatePickerField({
    super.key,
    this.hintText = 'Select Date',
    this.borderColor = AppColors.c926BF4,
    this.backgroundColor = AppColors.cFFFFFF,
    this.hintTextColor = Colors.grey,
    this.textColor = Colors.black,
    this.controller,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  });

  @override
  _CustomDatePickerFieldState createState() => _CustomDatePickerFieldState();
}

class _CustomDatePickerFieldState extends State<CustomDatePickerField> {
  TextEditingController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime initialDate = DateTime.now();
    DateTime firstDate = DateTime(2000);
    DateTime lastDate = DateTime(2101);

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (picked != null && picked != initialDate) {
      setState(() {
        _controller?.text = DateFormat('d MMMM, yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle hintTextStyle = TextFontStyle.textStyle14c4B586BUrbanistW600
        .copyWith(fontWeight: FontWeight.w400);
    TextStyle textStyle = TextFontStyle.textStyle14c4B586BUrbanistW600
        .copyWith(fontWeight: FontWeight.w400);

    return GestureDetector(
      onTap: () {
        _selectDate(context);
      },
      child: Container(
        height: 51.h,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          border: Border.all(color: widget.borderColor),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: AbsorbPointer(
          // Prevents interaction with the TextFormField itself
          child: TextFormField(
              controller: _controller,
              style: textStyle,
              readOnly: true, // To prevent typing
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: hintTextStyle,
                border: InputBorder.none,
                contentPadding: widget.contentPadding,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Image.asset(
                    Assets.images.calender.path,
                  ),
                ),
              ),
              textAlignVertical: TextAlignVertical.center),
        ),
      ),
    );
  }
}
