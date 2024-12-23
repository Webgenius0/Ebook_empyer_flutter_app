import 'package:abdilahi/common_widgets/custom_chip.dart';
import 'package:abdilahi/common_widgets/custom_horizontal_divider.dart';
import 'package:abdilahi/common_widgets/custom_rating_static.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/ebook_details/model/review_model.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
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
  List<Review> reviews = [
    Review(
      reviewerName: "Charlotte Hanlin",
      reviewText:
          "As a person who has a hard time picking up a book to read. I very much enjoy this book and definitely wouldn't mind reading it again.",
      starRating: 5,
      likes: 678,
      timeAgo: "6 Months ago",
      imageUrl: Assets.images.person1.path,
    ),
    Review(
      reviewerName: "Devon Lane",
      reviewText: "This book was very enjoyable and engaging.",
      starRating: 4,
      likes: 123,
      timeAgo: "3 Months ago",
      imageUrl: Assets.images.person1.path,
    ),
    Review(
      reviewerName: "Devon Lane",
      reviewText: "This book was very enjoyable and engaging.",
      starRating: 3,
      likes: 123,
      timeAgo: "3 Months ago",
      imageUrl: Assets.images.person1.path,
    ),
    Review(
      reviewerName: "Devon Lane",
      reviewText: "This book was very enjoyable and engaging.",
      starRating: 1,
      likes: 45,
      timeAgo: "1 Month ago",
      imageUrl: Assets.images.person1.path,
    ),
  ];

  int? selectedStar; // Store the selected star filter

  @override
  Widget build(BuildContext context) {
    List<Review> filteredReviews = selectedStar == null
        ? reviews
        : reviews.where((review) => review.starRating == selectedStar).toList();

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
                  "Ratings & Reviews",
                  style: TextFontStyle.textStyle20c212121UrbanistW600
                      .copyWith(color: AppColors.c2B2B2B),
                  overflow: TextOverflow.ellipsis, // Handle text overflow
                ),
              ),
            ),
            UIHelper.horizontalSpace(24.w),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              UIHelper.verticalSpace(20.h),
              const CustomRatingStatic(),
              UIHelper.verticalSpace(20.h),
              const CustomHorizontalDivider(),
              UIHelper.verticalSpace(20.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomChip(
                      text: " All",
                      isSelected: selectedStar == null,
                      onPressed: () {
                        setState(() {
                          selectedStar = null; // Show all reviews
                        });
                      },
                    ),
                    UIHelper.horizontalSpace(4.w),
                    ...List.generate(5, (index) {
                      int star = 5 - index;
                      return Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: CustomChip(
                          text: " $star",
                          isSelected: selectedStar == star,
                          onPressed: () {
                            setState(() {
                              selectedStar = star; // Filter by selected star
                            });
                          },
                        ),
                      );
                    }),
                  ],
                ),
              ),
              UIHelper.verticalSpace(20.h),
              const CustomHorizontalDivider(),
              // Reviews List
              Expanded(
                child: filteredReviews.isEmpty
                    ? Center(
                        child: Text(
                          "No reviews available.",
                          style: TextFontStyle.textStyle16c212121UrbanistW400,
                        ),
                      )
                    : ListView.builder(
                        itemCount: filteredReviews.length,
                        itemBuilder: (context, index) {
                          final review = filteredReviews[index];
                          return Container(
                            margin: EdgeInsets.only(bottom: 12.h),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              color: AppColors.cFFFFFF,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage(review.imageUrl),
                                      radius: 20.r,
                                    ),
                                    UIHelper.horizontalSpace(10.w),
                                    Text(
                                      review.reviewerName,
                                      style: TextFontStyle
                                          .textStyle14c212121UrbanistW600,
                                    ),
                                    const Spacer(),
                                    CustomChip(
                                      text: '${review.starRating}',
                                      isSelected: false,
                                      onPressed: null, // Non-clickable
                                    ),
                                  ],
                                ),
                                UIHelper.verticalSpace(12.h),
                                Text(
                                  review.reviewText,
                                  style: TextFontStyle
                                      .textStyle16c212121UrbanistW400
                                      .copyWith(height: 1.3),
                                ),
                                UIHelper.verticalSpace(12.h),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.thumb_up_alt_outlined,
                                            size: 16.sp,
                                            color: AppColors.c545A63),
                                        UIHelper.horizontalSpace(4.w),
                                        Text(
                                          '${review.likes}',
                                          style: TextFontStyle
                                              .textStyle16c212121UrbanistW400
                                              .copyWith(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    UIHelper.horizontalSpace(50.w),
                                    Text(
                                      review.timeAgo,
                                      style: TextFontStyle
                                          .textStyle16c212121UrbanistW400
                                          .copyWith(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RatingBarRow extends StatelessWidget {
  final int rating;
  final double percentage;

  const RatingBarRow({
    super.key,
    required this.rating,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$rating',
            style: TextFontStyle.textStyle48c333333UrbanistW600
                .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500)),
        UIHelper.horizontalSpace(5),
        const Icon(Icons.star, color: Colors.orange, size: 16),
        UIHelper.horizontalSpace(5),
        Expanded(
          child: LinearProgressIndicator(
            minHeight: 6.h,
            value: percentage,
            backgroundColor: Colors.transparent,
            borderRadius: BorderRadius.circular(40),
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
