// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookGenreScreen extends StatefulWidget {
  const BookGenreScreen({Key? key}) : super(key: key);

  @override
  _BookGenreScreenState createState() => _BookGenreScreenState();
}

class _BookGenreScreenState extends State<BookGenreScreen> {
  // List to track selected genres
  List<int> selectedGenres = [];

  final List<String> genreList = [
    "Romance",
    "Fantasy",
    "Sci-Fi",
    "Horror",
    "Mystery",
    "Thriller",
    "Psychology",
    "Inspiration",
    "Comedy",
    "Action",
    "Comics",
    "Adventure",
    "Children’s",
    "Art & Photography",
    "Food & Drink",
    "Biography",
    "Science & Technology",
    "Travel",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Scrollable content
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UIHelper.verticalSpace(16.h),
                        Text(
                          "Choose the Book Genre\nYou Like",
                          style: TextFontStyle.textStyle24c000000UrbanistW600,
                        ),
                        UIHelper.verticalSpace(6.h),
                        Text(
                          "Select your preferred book genre for better\nrecommendations, or you can skip it.",
                          style: TextFontStyle.textStyle14c4B586BUrbanistW400
                              .copyWith(height: 1.6.h),
                        ),
                        UIHelper.verticalSpace(24.h),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Wrap(
                      spacing: 10.w,
                      runSpacing: 10.h, // Adjusted runSpacing
                      children: List.generate(genreList.length, (index) {
                        final isSelected = selectedGenres.contains(index);
                        return SizedBox(
                          width: (MediaQuery.of(context).size.width - 50.w) /
                              3, // Set a fixed width for each button
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isSelected) {
                                  selectedGenres.remove(index); // Deselect
                                } else {
                                  selectedGenres.add(index); // Select
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.h, horizontal: 16.w),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.c743DFF
                                    : AppColors.cFFFFFF,
                                borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  color: AppColors.c743DFF,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  genreList[index],
                                  style: isSelected
                                      ? TextFontStyle
                                          .textStyle13cFFFFFFUrbanistW600
                                      : TextFontStyle
                                          .textStyle13c743DFFUrbanistW600,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            // Fixed buttons at the bottom
          ],
        ),
      ),
    );
  }
}
