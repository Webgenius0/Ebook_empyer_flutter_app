// ignore_for_file: deprecated_member_use

import 'package:abdilahi/common_widgets/custom_bookcard2.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/home/model/book_model.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/common_widgets/custom_bookcard.dart';

class SpecificGenrescreen extends StatefulWidget {
  const SpecificGenrescreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SpecificGenrescreenState createState() => _SpecificGenrescreenState();
}

class _SpecificGenrescreenState extends State<SpecificGenrescreen> {
  bool _isToogle = true;
  void _toggleState() {
    setState(() {
      _isToogle = !_isToogle; // Toggles the state
    });
  }

  final List<BookModel> books = [
    BookModel(
        imageUrl: Assets.images.e1.path,
        title: "One Hundred Years of Solitude",
        rating: 4.5,
        price: 29.99,
        author: "Douglas Adams"),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Show in",
                    style: TextFontStyle.textStyle20c2B2B2BUrbanistW600,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: _toggleState,
                        child: SvgPicture.asset(
                          Assets.icons.boxBlue,
                          color:
                              _isToogle ? AppColors.c743DFF : AppColors.cFFFFFF,
                        ),
                      ),
                      UIHelper.horizontalSpace(12.w),
                      GestureDetector(
                        onTap: _toggleState,
                        child: SvgPicture.asset(
                          Assets.icons.sortblack,
                          color: !_isToogle
                              ? AppColors.c743DFF
                              : AppColors.c2B2B2B,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              UIHelper.verticalSpace(12.h),
              Expanded(
                  child: _isToogle
                      ? GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 2 / 3.5,
                          ),
                          itemCount: books.length,
                          itemBuilder: (context, idx) {
                            final book = books[idx];
                            return BookCard(
                              imageUrl: book.imageUrl,
                              title: book.title,
                              rating: book.rating,
                              price: book.price,
                            );
                          },
                        )
                      : ListView.builder(
                          itemCount: books.length,
                          itemBuilder: (context, idx) {
                            final book = books[idx];
                            return BookItem(
                              imagePath: book.imageUrl,
                              title: book.title,
                              author: book.author,
                              labels:
                                  book.genres?.map((g) => g.title).toList() ??
                                      [],
                              rating: book.rating,
                              price: book.price,
                            );
                          },
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
