import 'package:abdilahi/common_widgets/custom_bookcard2.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/home/model/book_model.dart';
import 'package:abdilahi/features/home/model/genre_model.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Specific1GenerScreen extends StatefulWidget {
  const Specific1GenerScreen({super.key});

  @override
  _Specific1GenerScreenState createState() => _Specific1GenerScreenState();
}

class _Specific1GenerScreenState extends State<Specific1GenerScreen> {
  final List<BookModel> books = [
    BookModel(
        imageUrl: Assets.images.e1.path,
        title: "One Hundred Years of Solitude",
        rating: 4.5,
        price: 29.99,
        author: "Author: Gabriel Garcia Marquez",
        genres: [
          GenreModel(title: "Romantic", imageUrl: Assets.images.e2.path),
          GenreModel(title: "Thriller", imageUrl: Assets.images.e2.path),
          GenreModel(title: "Thriller", imageUrl: Assets.images.e2.path)
        ]),
    BookModel(
        imageUrl: Assets.images.e2.path,
        title: "Adventures of Huckleberry Finn",
        rating: 4.8,
        price: 39.99,
        author: "Author: Mark Twain",
        genres: [
          GenreModel(title: "Romantic", imageUrl: Assets.images.e2.path),
          GenreModel(title: "Thriller", imageUrl: Assets.images.e2.path),
          GenreModel(title: "Adventure", imageUrl: Assets.images.e2.path)
        ]),
    BookModel(
        imageUrl: Assets.images.e3.path,
        title: "Moby Dick",
        rating: 4.3,
        price: 24.99,
        author: "Author: Herman Melville",
        genres: [
          GenreModel(title: "Adventure", imageUrl: Assets.images.e2.path),
          GenreModel(title: "Classic", imageUrl: Assets.images.e2.path),
          GenreModel(title: "Romantic", imageUrl: Assets.images.e2.path),
        ]),
    BookModel(
        imageUrl: Assets.images.e4.path,
        title: "Adventures of Huckleberry Finn",
        rating: 4.3,
        price: 24.99,
        author: "Author: George Orwell",
        genres: [
          GenreModel(title: "Dystopian", imageUrl: Assets.images.e2.path),
          GenreModel(
              title: "Political Fiction", imageUrl: Assets.images.e2.path)
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              Assets.icons.arrowBack,
              height: 24.h,
              width: 24.w,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Romantic',
          style: TextFontStyle.textStyle20c2B2B2BUrbanistW600.copyWith(
              color: AppColors.c2B2B2B, fontSize: 20.sp, letterSpacing: -0.4),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                NavigationService.navigateTo(Routes.notificationEmptyScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 18.w),
                child: SvgPicture.asset(Assets.icons.setting),
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
          child: Column(
            children: [
              UIHelper.verticalSpace(12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Show in",
                    style: TextFontStyle.textStyle20c2B2B2BUrbanistW600,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Assets.icons.squareBlue),
                      SizedBox(
                        width: 12.w,
                      ),
                      SvgPicture.asset(Assets.icons.sortblack),
                    ],
                  ),
                ],
              ),
              UIHelper.verticalSpace(20.h),
              Expanded(
                child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, idx) {
                      final book = books[idx];
                      final genreTitles =
                          book.genres?.map((genre) => genre.title).toList();

                      return BookItem(
                          imagePath: book.imageUrl,
                          title: book.title,
                          author: book.title,
                          labels: genreTitles!,
                          rating: book.rating,
                          price: book.price);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
