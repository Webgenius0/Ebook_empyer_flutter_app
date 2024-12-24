import 'package:abdilahi/common_widgets/custom_horizontal_divider.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceFilterWidget extends StatefulWidget {
  const PriceFilterWidget({super.key});

  @override
  State<PriceFilterWidget> createState() => _PriceFilterWidgetState();
}

class _PriceFilterWidgetState extends State<PriceFilterWidget> {
  double _currentValue = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
          color: AppColors.cCDC1EB.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(width: 1, color: AppColors.cCDC1EB)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Price",
            style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
              fontSize: 20.sp,
              letterSpacing: -0.4.sp,
              height: 1.3.h,
              color: AppColors.c000000,
            ),
          ),
          UIHelper.verticalSpace(16.h),
          const CustomHorizontalDivider(),
          UIHelper.verticalSpace(16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " \$${_currentValue.toStringAsFixed(1)}",
                style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
                  fontSize: 14.sp,
                  height: 1.7.h,
                  color: AppColors.c743DFF,
                ),
              ),
              Text(
                "\$10",
                style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
                  fontSize: 14.sp,
                  height: 1.7.h,
                  color: AppColors.c743DFF,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: AppColors.c743DFF,
              inactiveTrackColor: AppColors.c743DFF.withOpacity(0.2),
              thumbColor: AppColors.c743DFF,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
              overlayColor: AppColors.c743DFF.withOpacity(0.2),
              trackHeight: 4,
            ),
            child: Padding(
              padding: EdgeInsets.zero,
              child: Slider(
                value: _currentValue,
                min: 0,
                max: 10,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
