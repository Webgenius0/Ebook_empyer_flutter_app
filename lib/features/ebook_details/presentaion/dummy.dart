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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF5F6F7,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0, // Remove shadow
        automaticallyImplyLeading: false, // Remove default back button
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
                  )),
            ),
            IconButton(
              onPressed: () {},
              icon: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset(
                    Assets.icons.addIcon,
                    height: 24.h,
                    width: 24.w,
                  )),
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
                  " Galaxy",
                  "Comedy",
                  "Science fiction",
                  "Mystery"
                ],
                releaseDate: 'Released on Dec, 2015',
              ),
              UIHelper.verticalSpace(16.h),

              //horizontal scroll
              UIHelper.verticalSpace(16.h),

              const CustomHorizontalDivider(),
              //Rating section
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
                      children: [
                        Icon(Icons.star, color: AppColors.cDDDDDD, size: 24.sp),
                        Icon(Icons.star, color: AppColors.cDDDDDD, size: 24.sp),
                        Icon(Icons.star, color: AppColors.cDDDDDD, size: 24.sp),
                        Icon(Icons.star, color: AppColors.cDDDDDD, size: 24.sp),
                      ],
                    ),

                    const CustomHorizontalDivider(),
                    //rate button
                  ],
                ),
              ),

              Text(
                "Describe Your Experience (Optional)",
                style: TextFontStyle.textStyle14c4B586BUrbanistW400
                    .copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600),
              ),
              Text(
                "I really really love it so much because 11m sniel Radcliffe or harry potter ... Please take it free for the fans of harry potter ! Please...",
                style: TextFontStyle.textStyle24c000000UrbanistW600.copyWith(
                    fontSize: 14.sp, fontWeight: FontWeight.w600, height: 1.5),
              )
            ],
          ),
        ),
      )),
    );
  }
}
