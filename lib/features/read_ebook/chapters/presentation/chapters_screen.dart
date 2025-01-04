// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChaptersScreen extends StatefulWidget {
  const ChaptersScreen({super.key});

  @override
  _ChaptersScreenState createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scaffoldKey.currentState
          ?.openDrawer(); // Open the drawer after the frame
    });
  }

  String selectedText =
      'The yew hedges muffled the sound of the men\'s footsteps. There was a rustle somewhere to their right: Yaxley drew his wand again, pointing it over his companion\'s head. but the source of the noise proved to be nothing more than a pure-white peacock, strutting majestically along the top of the hedge \n\n"He always did himself well, Lucius. Peacocks ... Yaxley thrust his wand back under his cloak with a snort.”\n\n A handsome manor house grew out of the darkness at the end of the straight drive, lights glinting in the diamond-paned downstairs windows Somewhere in the dark garden beyond the hedge a fountain was playing, Gravel crackled beneath their feet as Snape and Yaxley sped toward the front door. which swung inward at their approach, though nobody had visibly opened it. \n\n          The hallway was large, dimly lit, and sumptuously decorated, with a magnificent carpet covering most of the stone floor. The eyes Of the pale-faced portraits on the walls followed Snape and Yaxley as they strode';

  void updateText(String newText) {
    setState(() {
      selectedText = newText;
    });
    Navigator.pop(context); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppColors.cF5F6F7,
        key: _scaffoldKey,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                    color: AppColors.cFFFFFF // Background color of the header
                    ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chapters',
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chapter 1',
                      style:
                          TextFontStyle.textStyle14c4B586BUrbanistW600.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.c899AB2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Text(
                      'The Dark Lord Ascending',
                      style: TextFontStyle.textStyle14c4B586BUrbanistW600
                          .copyWith(fontSize: 18.sp, color: AppColors.c212121),
                    ),
                  ],
                ),
                onTap: () {
                  updateText("Selected Chapter 1");
                },
              ),
              const Divider(),
              ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chapter 2',
                      style:
                          TextFontStyle.textStyle14c4B586BUrbanistW600.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.c899AB2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Text(
                      'The Dark Lord Ascending',
                      style: TextFontStyle.textStyle14c4B586BUrbanistW600
                          .copyWith(fontSize: 18.sp, color: AppColors.c212121),
                    ),
                  ],
                ),
                onTap: () {
                  updateText("Selected Chapter 2");
                },
              ),
              const Divider(),
              ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chapter 3',
                      style:
                          TextFontStyle.textStyle14c4B586BUrbanistW600.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.c899AB2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Text(
                      'The Dark Lord Ascending',
                      style: TextFontStyle.textStyle14c4B586BUrbanistW600
                          .copyWith(fontSize: 18.sp, color: AppColors.c212121),
                    ),
                  ],
                ),
                onTap: () {
                  updateText("Selected Chapter 3");
                },
              ),
              const Divider(),
              ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chapter 4',
                      style:
                          TextFontStyle.textStyle14c4B586BUrbanistW600.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.c899AB2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Text(
                      'The Dark Lord Ascending',
                      style: TextFontStyle.textStyle14c4B586BUrbanistW600
                          .copyWith(fontSize: 18.sp, color: AppColors.c212121),
                    ),
                  ],
                ),
                onTap: () {
                  updateText("Selected Chapter 4");
                },
              ),
              const Divider(),
              ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chapter 5',
                      style:
                          TextFontStyle.textStyle14c4B586BUrbanistW600.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.c899AB2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Text(
                      'The Dark Lord Ascending',
                      style: TextFontStyle.textStyle14c4B586BUrbanistW600
                          .copyWith(fontSize: 18.sp, color: AppColors.c212121),
                    ),
                  ],
                ),
                onTap: () {
                  updateText("Selected Chapter 5");
                },
              ),
              const Divider(),
              ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chapter 6',
                      style:
                          TextFontStyle.textStyle14c4B586BUrbanistW600.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.c899AB2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Text(
                      'The Dark Lord Ascending',
                      style: TextFontStyle.textStyle14c4B586BUrbanistW600
                          .copyWith(fontSize: 18.sp, color: AppColors.c212121),
                    ),
                  ],
                ),
                onTap: () {
                  updateText("Selected Chapter 6");
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.green),
          elevation: 0,
          backgroundColor: AppColors.cF5F6F7,
          leading: Builder(
            builder: (context) => IconButton(
              // onPressed: () => Scaffold.of(context).openDrawer(),
              onPressed: () {
                NavigationService.navigateTo(Routes.navigationScreen);
              },
              icon: const Icon(Icons.arrow_back, color: AppColors.c212121),
            ),
          ),
          centerTitle: true,
          title: Text('One Hundred Years.....',
              style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
                  fontSize: 20.sp,
                  letterSpacing: -0.4.sp,
                  color: AppColors.c2B2B2B)),
          actions: [
            InkWell(
                onTap: () {
                  NavigationService.navigateTo(Routes.searchScreen);
                },
                child: Padding(
                    padding: EdgeInsets.only(right: 25.w),
                    child: SvgPicture.asset(Assets.icons.searchLogo))),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                UIHelper.verticalSpace(14.h),
                Text(selectedText,
                    style:
                        TextFontStyle.textStyle14c4B586BUrbanistW600.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.c212121,
                      fontWeight: FontWeight.w400,
                      height: 1.64,
                    ))
              ],
            ),
          ),
        ));
  }
}
