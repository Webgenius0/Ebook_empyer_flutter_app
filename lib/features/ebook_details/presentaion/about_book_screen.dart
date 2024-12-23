import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AboutBookScreen extends StatefulWidget {
  const AboutBookScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AboutBookScreenState createState() => _AboutBookScreenState();
}

class _AboutBookScreenState extends State<AboutBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context); // Navigate back when tapped
              },
              child: SvgPicture.asset(
                Assets.icons.arrowBack,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "About this Ebook",
                  style: TextFontStyle.textStyle20c212121UrbanistW600
                      .copyWith(color: AppColors.c2B2B2B),
                  overflow: TextOverflow.ellipsis, // Handle text overflow
                ),
              ),
            ),

            UIHelper.horizontalSpace(
                24.w), // Placeholder for balance in spacing
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextFontStyle.textStyle16c212121UrbanistW400
                        .copyWith(height: 1.5.h)),
                UIHelper.verticalSpace(13.h),
                Container(
                  width: double.infinity,
                  height: 1.h,
                  color: AppColors.cE2E2E2,
                ),
                UIHelper.verticalSpace(13.h),
                SizedBox(
                  height: 400,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Language",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "english",
                            style: TextFontStyle.textStyle14c545A63UrbanistW400,
                          ),
                          Text(
                            "Author",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text("J.k. Rowling",
                              style:
                                  TextFontStyle.textStyle14c743DFFUrbanistW400),
                          Text(
                            "Published on",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Dec 8, 2015",
                            style: TextFontStyle.textStyle14c545A63UrbanistW400,
                          ),
                          Text(
                            "Pages",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "784",
                            style: TextFontStyle.textStyle14c545A63UrbanistW400,
                          ),
                          Text(
                            "Purchases",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "50M+",
                            style: TextFontStyle.textStyle14c545A63UrbanistW400,
                          ),
                        ],
                      ),
                      UIHelper.horizontalSpace(100),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Age",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Ages 20 & Up",
                            style: TextFontStyle.textStyle14c545A63UrbanistW400,
                          ),
                          Text(
                            "Publisher",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text("Pottermore Publishing",
                              style:
                                  TextFontStyle.textStyle14c743DFFUrbanistW400),
                          Text(
                            "ISBN",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "9781781102435",
                            style: TextFontStyle.textStyle14c545A63UrbanistW400,
                          ),
                          Text(
                            "Genre",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Fantasy, Magic, Fiction",
                            style: TextFontStyle.textStyle14c743DFFUrbanistW400,
                          ),
                          Text(
                            "Size",
                            style: TextFontStyle.textStyle20c212121UrbanistW600
                                .copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "5.6MB",
                            style: TextFontStyle.textStyle14c545A63UrbanistW400,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
