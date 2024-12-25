// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/read_ebook/audio/presentation/audio_screen.dart';
import 'package:abdilahi/features/read_ebook/chapters/presentation/chapters_screen.dart';
import 'package:abdilahi/features/read_ebook/eye_protection/presentation/eye_protection_screen.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ReadEbookNavigaationScreen extends StatefulWidget {
  const ReadEbookNavigaationScreen({super.key});

  @override
  _ReadEbookNavigaationScreenState createState() =>
      _ReadEbookNavigaationScreenState();
}

class _ReadEbookNavigaationScreenState
    extends State<ReadEbookNavigaationScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    const ChaptersScreen(),
    const EyeProtectionScreen(),
    const AudioScreen(), // WishlistScreen
  ];

  void onItemTapped(int index) {
    if (index == 3) {
      showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Brightness',
                        style: TextFontStyle.textStyle13c743DFFUrbanistW600
                            .copyWith(
                                color: AppColors.c212121,
                                fontSize: 16.sp,
                                letterSpacing: -0.32))
                  ],
                ),
                Slider(
                  value: 50,
                  min: 0,
                  max: 100,
                  onChanged: (value) {},
                ),

                UIHelper.verticalSpace(16.h),

                // Background Color Selection

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Background Color',
                        style: TextFontStyle.textStyle13c743DFFUrbanistW600
                            .copyWith(
                                color: AppColors.c212121,
                                fontSize: 16.sp,
                                letterSpacing: -0.32))
                  ],
                ),

                UIHelper.verticalSpace(8.h),

                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: List.generate(8, (index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        width: 79.0.w,
                        height: 52.0.h,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: AppColors.c592BFF),
                          color: _getBackgroundColor(index),
                          borderRadius: BorderRadius.circular(4.r),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    );
                  }),
                ),

                UIHelper.verticalSpace(16.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Font Size',
                      style: TextFontStyle.textStyle13c743DFFUrbanistW600
                          .copyWith(
                              color: AppColors.c212121,
                              fontSize: 16.sp,
                              letterSpacing: -0.32),
                    ),
                  ],
                ),
                Slider(
                  value: 18,
                  min: 12,
                  max: 30,
                  onChanged: (value) {},
                ),

                UIHelper.verticalSpace(16.h),

                // Layout Options
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Font Size',
                      style: TextFontStyle.textStyle13c743DFFUrbanistW600
                          .copyWith(
                              color: AppColors.c212121,
                              fontSize: 16.sp,
                              letterSpacing: -0.32),
                    ),
                  ],
                ),

                UIHelper.verticalSpace(8.h),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: AppColors.cF6F5F5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildFontAlignmentButton(Icons.format_align_left),
                      _buildFontAlignmentButton(Icons.format_align_center),
                      _buildFontAlignmentButton(Icons.format_align_right),
                      _buildFontAlignmentButton(Icons.format_align_justify),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    } else {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c545A63,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.cFFFFFF,
        selectedItemColor: AppColors.c743DFF,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.chapter),
            activeIcon: SvgPicture.asset(
              Assets.icons.chapter,
              color: AppColors.c743DFF,
            ),
            label: "Chapters",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.eyeProtection),
            activeIcon: SvgPicture.asset(
              Assets.icons.eyeProtection,
              color: AppColors.c743DFF,
            ),
            label: "Eye Protection",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.audio),
            activeIcon: SvgPicture.asset(
              Assets.icons.audio,
              color: AppColors.c743DFF,
            ),
            label: "Audio",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.setting),
            activeIcon: SvgPicture.asset(
              Assets.icons.setting,
              color: AppColors.c743DFF,
            ),
            label: "Setting",
          ),
        ],
      ),
    );
  }

  Color _getBackgroundColor(int index) {
    const colors = [
      Colors.white,
      Colors.black,
      Colors.grey,
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.deepOrange,
      Colors.teal,
    ];
    return colors[index % colors.length];
  }

  // Helper method for font alignment buttons
  Widget _buildFontAlignmentButton(IconData icon) {
    return IconButton(
      icon: Container(
          height: 40.h,
          width: 84.w,
          decoration: BoxDecoration(
            color: AppColors.c743DFF,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Icon(icon)),
      onPressed: () {},
      color: Colors.white,
    );
  }
}
