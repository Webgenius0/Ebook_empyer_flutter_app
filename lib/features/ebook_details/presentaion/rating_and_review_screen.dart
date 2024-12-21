import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RatingAndReviewScreen extends StatefulWidget {
  const RatingAndReviewScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RatingAndReviewScreenState createState() => _RatingAndReviewScreenState();
}

class _RatingAndReviewScreenState extends State<RatingAndReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Ratings & Reviews",
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
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(Assets.images.person1.path),
                              radius: 20.r,
                            ),
                            UIHelper.horizontalSpace(10.w),
                            Text(
                              'Charolette Hanlin',
                              style:
                                  TextFontStyle.textStyle14c212121UrbanistW600,
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                  size: 18,
                                ),
                                UIHelper.horizontalSpace(4.w),
                                const Text(
                                  '5',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                            'As a person who has a hard time picking up a book to read. I very much enjoy this book and definitely wouldn\'t mind reading it again.',
                            style: TextFontStyle.textStyle16c212121UrbanistW400
                                .copyWith(height: 1.3)),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.thumb_up_alt_outlined,
                                    size: 16, color: Colors.grey),
                                SizedBox(width: 4),
                                Text('678',
                                    style: TextFontStyle
                                        .textStyle16c212121UrbanistW400
                                        .copyWith(
                                      fontSize: 10,
                                    )),
                              ],
                            ),
                            UIHelper.horizontalSpace(50),
                            Text('6 Months ago',
                                style: TextFontStyle
                                    .textStyle16c212121UrbanistW400
                                    .copyWith(
                                  fontSize: 10,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
