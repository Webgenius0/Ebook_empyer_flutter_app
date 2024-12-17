import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: 100.h), // Prevent overlap with buttons
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 35.w, vertical: 25.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(Assets.icons.arrowBack),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            "Choose the Book Genre\nYou Like",
                            style: TextFontStyle.textStyle24c000000UrbanistW600,
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            "Select your preferred book genre for better\nrecommendations, or you can skip it.",
                            style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                          ),
                          SizedBox(height: 20.h),
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
                    SizedBox(
                      height: 180.h,
                    ),
                  ],
                ),
              ),
            ),
            // Fixed buttons at the bottom
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.cD7C8FF,
                        fixedSize: const Size(145, 56),
                        padding: EdgeInsets.symmetric(
                            vertical: 14.h, horizontal: 40.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        // Navigate to the next route (e.g., skipping the genre selection)
                        Navigator.pushNamed(context, '/createAccountScreen');
                      },
                      child: Text(
                        "Skip",
                        style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.c743DFF,
                        fixedSize: const Size(145, 56),
                        padding: EdgeInsets.symmetric(
                            vertical: 14.h, horizontal: 40.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        NavigationService.navigateTo(
                            Routes.completeProfileScreen);
                      },
                      child: Text(
                        "Continue",
                        style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
