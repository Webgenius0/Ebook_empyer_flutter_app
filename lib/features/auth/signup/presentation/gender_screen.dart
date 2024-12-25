// ignore_for_file: deprecated_member_use

import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/common_widgets/custom_horizontal_divider.dart';
import 'package:abdilahi/common_widgets/stepper_bar.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int? selectedValue = 0;
  int currentIndex = 0;
  final int totalSteps = 5;

  final List<String> options = [
    'I am male',
    'I am female',
    'Rather not to say',
  ];

  double calculateStepperPerformance() {
    return (currentIndex / totalSteps) *
        100; // Percentage width for the stepper
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Transform.translate(
                  //         offset: Offset(-9.w, 0),
                  //         child: InkWell(
                  //           onTap: () => NavigationService.goBack,
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child:
                  //                 SvgPicture.asset(Assets.icons.arrowBack),
                  //           ),
                  //         ),
                  //       ),
                  //       // SizedBox(
                  //       //   height: 10,
                  //       //   child: PerformanceBar(
                  //       //     fillColor: AppColors.c3689FD,
                  //       //     width:
                  //       //         calculateStepperPerformance(), // Pass the calculated width percentage
                  //       //   ),
                  //       // ),
                  //       Container()
                  //     ]),
                  UIHelper.verticalSpace(26.h),
                  Text(
                    "What is your gender?",
                    style: TextFontStyle.textStyle24c000000UrbanistW600,
                  ),
                  UIHelper.verticalSpace(16.h),
                  Text(
                    "Select gender for better content.",
                    style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                  ),
                  UIHelper.verticalSpace(40.h),
                  ListView.builder(
                    itemCount: options.length,
                    shrinkWrap: true,
                    primary: false,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, idx) {
                      return Column(
                        children: [
                          Transform.translate(
                            offset: Offset(-20.w, 0),
                            child: RadioListTile(
                              title: Text(options[idx]),
                              value: idx,
                              groupValue: selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                              activeColor: AppColors.c743DFF,
                              fillColor:
                                  MaterialStateProperty.all(AppColors.c743DFF),
                            ),
                          ),
                          UIHelper.verticalSpace(10.h),
                          const CustomHorizontalDivider(), // Custom horizontal divider
                          UIHelper.verticalSpace(
                              10.h), // Optional: Add space after the divider
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
