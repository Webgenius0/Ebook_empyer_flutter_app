import 'dart:ui';
import 'package:abdilahi/common_widgets/custom_book_detail_card.dart';
import 'package:abdilahi/common_widgets/custom_horizontal_divider.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';

import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WriteReviewScreenState createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  void showCustomAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Blurred background
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.2), // Optional dark overlay
              ),
            ),
            Center(
              child: Container(
                width: 342.w, // Adjust width for responsiveness
                height: 486.h, // Adjust height for responsiveness
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Assets.icons.frame),
                    Text(
                      "Submitted Successfully",
                      style: TextFontStyle.textStyle24c743DFFUrbanistW700
                          .copyWith(decoration: TextDecoration.none),
                    ),
                    UIHelper.verticalSpace(20.h),
                    Text(
                      "Thank you for providing a rating\nand review for the ebook: Harry\nPotter and the Deathly Hallows",
                      textAlign: TextAlign.center,
                      style: TextFontStyle.textStyle16c000000UrbanistW400
                          .copyWith(decoration: TextDecoration.none),
                    ),
                    UIHelper.verticalSpace(35.h),
                    GestureDetector(
                      onTap: () {
                        // NavigationService.navigateTo(
                        //     Routes.ratingAndReviewScreen);
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 48.h,
                        width: 279.w,
                        decoration: BoxDecoration(
                          color: AppColors.c743DFF,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Center(
                          child: Text(
                            "Ok",
                            style: TextFontStyle.textStyle16cFFFFFFUrbanistW600
                                .copyWith(
                              fontSize: 14.sp,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  int _selectedRating = 0; // To keep track of the selected rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF5F6F7,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Padding(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset(
                  Assets.icons.arrowBack,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset(
                  Assets.icons.addIcon,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                UIHelper.horizontalSpace(10.h),
                CustomBookDetailCard(
                  imagePath: Assets.images.e3.path,
                  title: "One Hundred Years of Solitude",
                  rating: 4.5,
                  price: 29.99,
                  author: 'Douglas Adams',
                  labels: const [
                    " Galaxy",
                    "Comedy",
                    "Science fiction",
                    "Mystery"
                  ],
                  releaseDate: 'Released on Dec, 2015',
                ),
                UIHelper.verticalSpace(20.h),
                const CustomHorizontalDivider(),
                // Rating Section
                SizedBox(
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Rate this Ebook",
                        style: TextFontStyle.textStyle16c212121UrbanistW600
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return IconButton(
                            icon: Icon(
                              Icons.star,
                              color: index < _selectedRating
                                  ? AppColors
                                      .cF89300 // Yellow for selected stars
                                  : AppColors
                                      .cDDDDDD, // Grey for unselected stars
                              size: 32.sp,
                            ),
                            onPressed: () {
                              setState(() {
                                _selectedRating = index + 1;
                              });
                            },
                          );
                        }),
                      ),
                      const CustomHorizontalDivider(),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Describe Your Experience (Optional)",
                    style: TextFontStyle.textStyle14c4B586BUrbanistW400
                        .copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                UIHelper.verticalSpace(12.h),
                Container(
                  height: 143.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.cCDC1EB, width: 1.5),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    style:
                        TextFontStyle.textStyle24c000000UrbanistW600.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.5.h,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write your text here...',
                      hintStyle: TextFontStyle.textStyle24c000000UrbanistW600
                          .copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.5),
                      contentPadding: EdgeInsets.all(10.0.r),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.cFFFFFF,
        height: 108.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColors.cCDC1EB,
                ),
                width: 163.w,
                height: 48.h,
                child: Center(
                  child: Text(
                    "Cancel",
                    style: TextFontStyle.textStyle14c5312F8UrbanistW500,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showCustomAlert(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColors.c743DFF,
                ),
                width: 163.w,
                height: 48.h,
                child: Center(
                  child: Text(
                    "Submit",
                    style: TextFontStyle.textStyle14cFFFFFFUrbanistW500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
