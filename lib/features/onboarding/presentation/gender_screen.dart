import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int? selectedValue = 0;
  final List<String> options = [
    'I am male',
    'I am female',
    'Rather not to say',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.w, vertical: 25.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.translate(
                        offset: Offset(-9.w, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(Assets.icons.arrowBack),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        "What is your gender?",
                        style: TextFontStyle.textStyle24c000000UrbanistW600,
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        "Select gender for better content.",
                        style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                      ),
                      SizedBox(height: 40.h),
                      ListView.builder(
                        itemCount: options.length,
                        shrinkWrap: true,
                        primary: false,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, idx) {
                          return Transform.translate(
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
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 40.h,
              left: 20.w,
              right: 20.w,
              child: CustomButtonOne(
                text: "Continue",
                backgroundColor: AppColors.c743DFF,
                onPressed: () {
                  NavigationService.navigateTo(Routes.signupAgeScreen);
                },
                style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
