import 'package:abdilahi/common_widgets/custom_bookcard.dart';
import 'package:abdilahi/common_widgets/custom_genre_card.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/home/model/book_model.dart';
import 'package:abdilahi/features/home/model/genre_model.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BookModel> books = [
    BookModel(
      imageUrl: Assets.images.e1.path,
      title: "One Hundred Years of Solitude",
      rating: 4.5,
      price: 29.99,
    ),
    BookModel(
      imageUrl: Assets.images.e2.path,
      title: "Adventures of Huckleberry Finn",
      rating: 4.8,
      price: 39.99,
    ),
    BookModel(
      imageUrl: Assets.images.e3.path,
      title: "One Hundred Years of Solitude",
      rating: 4.3,
      price: 24.99,
    ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(Assets.icons.ebookSmall),
                        SizedBox(width: 16.h),
                        SvgPicture.asset(Assets.icons.ebookName),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              NavigationService.navigateTo(
                                  Routes.specificGenrescreen);
                            },
                            child: SvgPicture.asset(Assets.icons.searchLogo)),
                        SizedBox(width: 16.h),
                        InkWell(
                            onTap: () {
                              // NavigationService.navigateTo(
                              //     Routes.specificGenrescreen);
                              NavigationService.navigateTo(
                                  Routes.exploreByGenreScreen);
                            },
                            child: SvgPicture.asset(
                                Assets.icons.notificationBell)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
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
                SizedBox(height: 20.h),
                // second recomended
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore by Genre",
                      style: TextFontStyle.textStyle20c212121UrbanistW600,
                    ),
                    SvgPicture.asset(Assets.icons.arrowforward)
                  ],
                ),
                // SizedBox(
                //   height: 20.h,
                // ),
                SizedBox(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: genres.length,
                    itemBuilder: (context, idx) {
                      final genre = genres[idx];
                      return Padding(
                        padding: EdgeInsets.only(
                            right: 8.w), // Padding between cards
                        child: CustomGenreCard(
                          text: genre.title,
                          imageUrl: genre.imageUrl,
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended For you",
                      style: TextFontStyle.textStyle20c212121UrbanistW600,
                    ),
                    SvgPicture.asset(Assets.icons.arrowforward)
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                //Recommended for you
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended For you",
                      style: TextFontStyle.textStyle20c212121UrbanistW600,
                    ),
                    SvgPicture.asset(Assets.icons.arrowforward)
                  ],
                ),
                // SizedBox(
                //   height: 300.h,
                //   child: ListView.builder(
                //     itemCount: books.length,
                //     itemBuilder: (context, idx) {
                //       final book = books[idx];
                //       return Padding(
                //         padding: EdgeInsets.only(
                //             right: 16.w), // Padding between cards
                //         child: BookCard(
                //           imageUrl: book.imageUrl,
                //           title: book.title,
                //           rating: book.rating,
                //           price: book.price,
                //         ),
                //       );
                //     },
                //   ),
                // ),
                SizedBox(height: 20.h),
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "On Your Wishlist",
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
                        padding: EdgeInsets.only(
                            right: 16.w), // Padding between cards
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
