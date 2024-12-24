import 'package:abdilahi/common_widgets/custom_horizontal_divider.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingFilterWidget extends StatefulWidget {
  const RatingFilterWidget({super.key});

  @override
  State<RatingFilterWidget> createState() => _RatingFilterWidgetState();
}

class _RatingFilterWidgetState extends State<RatingFilterWidget> {
  int? selectedValue = 0;
  final List<String> ratingFilterOptions = [
    'All',
    '4.5+',
    '4.0+',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      decoration: BoxDecoration(
          color: AppColors.cCDC1EB.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(width: 1, color: AppColors.cCDC1EB)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Rating",
            style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
              fontSize: 20.sp,
              letterSpacing: -0.4.sp,
              height: 1.3.h,
              color: AppColors.c000000,
            ),
          ),
          ListView.builder(
            itemCount: ratingFilterOptions.length,
            shrinkWrap: true,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final data = ratingFilterOptions[index];
              return Column(
                children: [
                  Transform.translate(
                    offset: Offset(-20.w, 0),
                    child: RadioListTile(
                      contentPadding: EdgeInsets.only(left: 16.w),
                      title: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        child: Text(
                          data,
                          style: TextFontStyle.textStyle20c212121UrbanistW600
                              .copyWith(
                            fontSize: 14.sp,
                            height: 1.1.h,
                            fontWeight: FontWeight.w500,
                            color: AppColors.c4B586B,
                          ),
                        ),
                      ),
                      value: index,
                      groupValue: selectedValue,
                      onChanged: (int? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      activeColor: AppColors.c743DFF,
                      fillColor: WidgetStateProperty.all(AppColors.c743DFF),
                    ),
                  ),
                  const CustomHorizontalDivider(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
