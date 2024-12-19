import 'package:abdilahi/features/discover/presentation/discover_screen.dart';
import 'package:abdilahi/features/home/presentation/home_screen.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    final List<Widget> screens = [const HomeScreen(), const DiscoverScreen()];

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.c743DFF,
        // unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.homeIcon),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.discoverIcon),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.wishlistIcon),
            label: "wishlist",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.purchasedIcon),
            label: "Purchased",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.profileIcon),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
