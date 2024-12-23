// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/features/account_and_setting/presentation/account_full_screen.dart';
import 'package:abdilahi/features/discover_and_search/presentation/discover_screen.dart';
import 'package:abdilahi/features/home/presentation/home_screen.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const DiscoverScreen(),
    Placeholder(), // WishlistScreen
    Placeholder(), // PurchasedScreen
    const AccountFullScreen(), // ProfileScreen
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
            icon: SvgPicture.asset(Assets.icons.homeIcon),
            activeIcon: SvgPicture.asset(
              Assets.icons.homeIcon,
              color: AppColors.c743DFF,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.discoverIcon),
            activeIcon: SvgPicture.asset(
              Assets.icons.discoverIcon,
              color: AppColors.c743DFF,
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.wishlistIcon),
            activeIcon: SvgPicture.asset(
              Assets.icons.wishlistIcon,
              color: AppColors.c743DFF,
            ),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.purchasedIcon),
            activeIcon: SvgPicture.asset(
              Assets.icons.purchasedIcon,
              color: AppColors.c743DFF,
            ),
            label: "Purchased",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.profileIcon),
            activeIcon: SvgPicture.asset(
              Assets.icons.profileIcon,
              color: AppColors.c743DFF,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
