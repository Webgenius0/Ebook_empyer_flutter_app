// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectAgeScreen extends StatefulWidget {
  const SelectAgeScreen({super.key});

  @override
  _SelectAgeScreenState createState() => _SelectAgeScreenState();
}

class _SelectAgeScreenState extends State<SelectAgeScreen> {
  int? selectedValue = 0;

  final List<String> ageRanges = [
    "14-17",
    "18-24",
    "25-29",
    "30-34",
    "35-39",
    "40-44",
    "45-49",
    ">50",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.verticalSpace(16.h),
                  Text(
                    "Choose Your Age",
                    style: TextFontStyle.textStyle24c000000UrbanistW600,
                  ),
                  UIHelper.verticalSpace(16.h),
                  Text(
                    "Select age range for better content.",
                    style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                  ),
                  UIHelper.verticalSpace(24.h),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.w,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: 3.8,
                ),
                itemCount: ageRanges.length,
                itemBuilder: (context, index) {
                  final isSelected = index == selectedValue;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedValue = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 16.w),
                      decoration: BoxDecoration(
                        color:
                            isSelected ? AppColors.c743DFF : AppColors.cFFFFFF,
                        borderRadius: BorderRadius.circular(70.r),
                        border: Border.all(
                          color: AppColors.c743DFF,
                          width: 1.5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          ageRanges[index],
                          style: isSelected
                              ? TextFontStyle.textStyle13cFFFFFFUrbanistW600
                              : TextFontStyle.textStyle13c743DFFUrbanistW600,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
