import 'dart:math';

import 'package:abdilahi/common_widgets/custom_bookcard.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/home/model/book_model.dart';
import 'package:abdilahi/features/home/model/genre_model.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final List<BookModel> books = [
    BookModel(
        imageUrl: Assets.images.e1.path,
        title: "One Hundred Years of Solitude",
        rating: 4.5,
        price: 29.99,
        author: " Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e2.path,
        title: "Adventures of Huckleberry Finn",
        rating: 4.8,
        price: 39.99,
        author: "Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e3.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        author: "Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e4.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        author: "Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e5.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        author: "Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e3.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        author: "Douglas Adams"),
  ];

  List<GenreModel> genres = [
    GenreModel(
      imageUrl: Assets.images.romantic.path,
      title: "Romantic",
    ),
    GenreModel(
      imageUrl: Assets.images.thriller.path,
      title: "Thriller",
    ),
    GenreModel(
      imageUrl: Assets.images.thriller.path,
      title: "Inspiration",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onDoubleTap: () {
                          NavigationService.navigateTo(
                              Routes.notificationEmptyScreen);
                        },
                        child: SvgPicture.asset(Assets.icons.ebookSmall)),
                    Text(
                      'Discover',
                      style: TextFontStyle.textStyle20c2B2B2BUrbanistW600
                          .copyWith(
                              color: AppColors.c2B2B2B,
                              fontSize: 20.sp,
                              letterSpacing: -0.4),
                    ),
                    InkWell(
                        onTap: () {
                          NavigationService.navigateTo(Routes.searchScreen);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(right: 18.w),
                            child: SvgPicture.asset(Assets.icons.searchLogo))),
                  ],
                ),
                UIHelper.verticalSpace(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Selling",
                      style: TextFontStyle.textStyle20c212121UrbanistW600,
                    ),
                    SvgPicture.asset(Assets.icons.arrowforward)
                  ],
                ),
                UIHelper.verticalSpace(20.h),
                SizedBox(
                  height: 650,
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2 / 3.5,
                    ),
                    itemCount: min(books.length, 4),
                    itemBuilder: (context, idx) {
                      final book = books[idx];
                      return GestureDetector(
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
                      );
                    },
                  ),
                ),
                UIHelper.verticalSpace(12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Releases",
                      style: TextFontStyle.textStyle20c212121UrbanistW600,
                    ),
                    SvgPicture.asset(Assets.icons.arrowforward)
                  ],
                ),
                UIHelper.verticalSpace(12.h),
                SizedBox(
                  height: 302.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: books.length,
                    itemBuilder: (context, idx) {
                      final book = books[idx];
                      return Padding(
                        padding: EdgeInsets.only(
                            right: 16.w), // Padding between cards
                        child: GestureDetector(
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
                UIHelper.verticalSpace(12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Chart",
                      style: TextFontStyle.textStyle20c212121UrbanistW600,
                    ),
                    SvgPicture.asset(Assets.icons.arrowforward)
                  ],
                ),
                UIHelper.verticalSpace(12.h),
                SizedBox(
                  height: 302.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: books.length,
                    itemBuilder: (context, idx) {
                      final book = books[idx];
                      return Padding(
                        padding: EdgeInsets.only(
                            right: 16.w), // Padding between cards
                        child: GestureDetector(
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
                UIHelper.verticalSpace(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Free Books",
                      style: TextFontStyle.textStyle20c212121UrbanistW600,
                    ),
                    SvgPicture.asset(Assets.icons.arrowforward)
                  ],
                ),
                UIHelper.verticalSpace(20.h),
                SizedBox(
                  height: 650,
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2 / 3.5,
                    ),
                    itemCount: min(books.length, 4),
                    itemBuilder: (context, idx) {
                      final book = books[idx];
                      return GestureDetector(
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
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
