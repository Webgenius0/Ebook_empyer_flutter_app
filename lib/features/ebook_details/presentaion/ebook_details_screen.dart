import 'package:abdilahi/common_widgets/custom_book_detail_card.dart';
import 'package:abdilahi/common_widgets/custom_bookcard.dart';
import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/home/model/book_model.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EbookDetailsScreen extends StatefulWidget {
  const EbookDetailsScreen({super.key});

  @override
  _EbookDetailsScreenState createState() => _EbookDetailsScreenState();
}

class _EbookDetailsScreenState extends State<EbookDetailsScreen> {
  final List<BookModel> books = [
    BookModel(
        imageUrl: Assets.images.e1.path,
        title: "One Hundred Years of Solitude",
        rating: 4.5,
        price: 29.99,
        author: "Author: Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e2.path,
        title: "Adventures of Huckleberry Finn",
        rating: 4.8,
        price: 39.99,
        author: "Author: Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e3.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        author: "Author: Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e4.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        author: "Author: Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e5.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        author: "Author: Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e3.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        author: "Author: Douglas Adams"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                labels: [" Galaxy", "Comedy", "Science fiction", "Mystery"],
                releaseDate: 'Released on Dec, 2015',
              ),
              UIHelper.verticalSpace(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "4.7",
                        style: TextFontStyle.textStyle12c4B586BUrbanistW500
                            .copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "6.8K reviews",
                        style: TextFontStyle.textStyle12c4B586BUrbanistW500,
                      )
                    ],
                  ),
                  UIHelper.horizontalSpace(10.w),
                  Container(
                    width: 1.w,
                    height: 45.h,
                    color: AppColors.cE2E2E2,
                  ),
                  UIHelper.horizontalSpace(10.h),
                  Column(
                    children: [
                      Text(
                        "5.6MB",
                        style: TextFontStyle.textStyle12c4B586BUrbanistW500
                            .copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("size",
                          style: TextFontStyle.textStyle12c4B586BUrbanistW500)
                    ],
                  ),
                  UIHelper.horizontalSpace(10.h),
                  Container(
                    width: 1.w,
                    height: 45.h,
                    color: AppColors.cE2E2E2,
                  ),
                  UIHelper.horizontalSpace(10.h),
                  Column(
                    children: [
                      Text(
                        "784",
                        style: TextFontStyle.textStyle12c4B586BUrbanistW500
                            .copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("Pages",
                          style: TextFontStyle.textStyle12c4B586BUrbanistW500)
                    ],
                  ),
                  UIHelper.horizontalSpace(10.h),
                  Container(
                    width: 1.w,
                    height: 45.h,
                    color: AppColors.cE2E2E2,
                  ),
                  UIHelper.horizontalSpace(10.h),
                  Column(
                    children: [
                      Text(
                        "50M+",
                        style: TextFontStyle.textStyle12c4B586BUrbanistW500
                            .copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("purchases",
                          style: TextFontStyle.textStyle12c4B586BUrbanistW500)
                    ],
                  ),
                ],
              ),

              //horizontal scroll
              UIHelper.verticalSpace(16.h),
              CustomButtonOne(
                text: "Buy USD 9.99",
                backgroundColor: AppColors.c743DFF,
                onPressed: () {
                  NavigationService.navigateTo(
                      Routes.selectPaymentMethodScreen);
                },
                style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
              ),

              UIHelper.verticalSpace(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "About This",
                    style: TextFontStyle.textStyle20c212121UrbanistW600,
                  ),
                  GestureDetector(
                      onTap: () {
                        NavigationService.navigateTo(Routes.aboutBookScreen);
                      },
                      child: SvgPicture.asset(Assets.icons.arrowforward))
                ],
              ),
              //About data
              UIHelper.verticalSpace(16.h),
              Text(
                "Lorem ipsum dolor sit amet. consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud",
                style: TextFontStyle.textStyle16c000000UrbanistW400
                    .copyWith(height: 1.5),
              ),
              UIHelper.verticalSpace(16.h),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Ratings & Reviews",
              //       style: TextFontStyle.textStyle20c212121UrbanistW600,
              //     ),
              //     InkWell(
              //         onTap: () {
              //           NavigationService.navigateTo(
              //               Routes.ratingAndReviewScreen);
              //         },
              //         child: SvgPicture.asset(Assets.icons.arrowforward))
              //   ],
              // ),
              //rating content start

              //rating content end
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Harry Potter Series",
                    style: TextFontStyle.textStyle20c212121UrbanistW600,
                  ),
                  SvgPicture.asset(Assets.icons.arrowforward)
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 302.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  itemBuilder: (context, idx) {
                    final book = books[idx];
                    return Padding(
                      padding:
                          EdgeInsets.only(right: 16.w), // Padding between cards
                      child: InkWell(
                        onTap: () {
                          NavigationService.navigateTo(
                              Routes.ebookDetailsScreen);
                        },
                        child: BookCard(
                          imageUrl: book.imageUrl,
                          title: book.title,
                          rating: book.rating,
                          price: book.price,
                        ),
                      ),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Similar Ebooks",
                    style: TextFontStyle.textStyle20c212121UrbanistW600,
                  ),
                  SvgPicture.asset(Assets.icons.arrowforward)
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 302.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  itemBuilder: (context, idx) {
                    final book = books[idx];
                    return Padding(
                      padding:
                          EdgeInsets.only(right: 16.w), // Padding between cards
                      child: InkWell(
                        onTap: () {
                          NavigationService.navigateTo(
                              Routes.ebookDetailsScreen);
                        },
                        child: BookCard(
                          imageUrl: book.imageUrl,
                          title: book.title,
                          rating: book.rating,
                          price: book.price,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
