import 'package:abdilahi/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/constants/text_font_style.dart';

class CustomCountryPickerField extends StatefulWidget {
  final String hintText;
  final Color borderColor;
  final Color backgroundColor;
  final Color hintTextColor;
  final Color textColor;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController? controller;
  final List<String> countries; // List of countries to be passed from parent

  // Constructor with default values
  const CustomCountryPickerField({
    super.key,
    this.hintText = 'Select Country',
    this.borderColor = AppColors.c926BF4,
    this.backgroundColor = AppColors.cFFFFFF,
    this.hintTextColor = Colors.grey,
    this.textColor = Colors.black,
    this.controller,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    required this.countries, // Make sure countries list is passed when widget is created
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomCountryPickerFieldState createState() =>
      _CustomCountryPickerFieldState();
}

class _CustomCountryPickerFieldState extends State<CustomCountryPickerField> {
  TextEditingController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  // Function to show country picker dialog
  void _selectCountry(BuildContext context) async {
    String? selectedCountry = await showDialog<String>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Select Country',
              style: TextFontStyle.textStyle14c4B586BUrbanistW600),
          children: widget.countries.map((country) {
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, country);
              },
              child: Text(country, style: TextStyle(color: widget.textColor)),
            );
          }).toList(),
        );
      },
    );

    if (selectedCountry != null) {
      setState(() {
        _controller?.text = selectedCountry;
      });
    }
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
        controller: _controller,
        style: TextFontStyle.textStyle14c4B586BUrbanistW600,
        readOnly: true, // To prevent typing
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: hintTextStyle, // Apply custom TextStyle to hintText
          border: InputBorder.none, // Removes the default border
          contentPadding: widget.contentPadding,
          suffixIcon: GestureDetector(
            onTap: () {
              _selectCountry(context);
            },
            child: Padding(
              padding: EdgeInsets.all(15.sp),
              child: Image.asset(
                Assets.images.downArrow.path,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
