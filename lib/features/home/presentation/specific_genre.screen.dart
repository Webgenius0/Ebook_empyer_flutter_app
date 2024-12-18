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
  final List<BookModel> books = [
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
    BookModel(
      imageUrl: Assets.images.e4.path,
      title: "One Hundred Years of Solitude",
      rating: 4.3,
      price: 24.99,
    ),
    BookModel(
      imageUrl: Assets.images.e5.path,
      title: "One Hundred Years of Solitude",
      rating: 4.3,
      price: 24.99,
    ),
    BookModel(
      imageUrl: Assets.images.e3.path,
      title: "One Hundred Years of Solitude",
      rating: 4.3,
      price: 24.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              // Top Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      Assets.icons.arrowBack,
                      width: 12.w,
                      height: 12.h,
                    ),
                  ),
                  Text(
                    "Romantic",
                    style: TextFontStyle.textStyle20c2B2B2BUrbanistW600,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(Assets.icons.setting),
                  ),
                ],
              ),

              SizedBox(
                height: 20.h,
              ),

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
              SizedBox(height: 20.h),
              // Grid View of Books
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 1,
                    childAspectRatio: 0.5,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
