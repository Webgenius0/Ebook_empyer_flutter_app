// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:abdilahi/features/read_ebook/audio/presentation/audio_screen.dart';
import 'package:abdilahi/features/read_ebook/chapters/presentation/chapters_screen.dart';
import 'package:abdilahi/features/read_ebook/eye_protection/presentation/eye_protection_screen.dart';
import 'package:abdilahi/features/read_ebook/setting/presentation/setting_screen.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
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
    const SettingsScreen(), // PurchasedScreen
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
}
