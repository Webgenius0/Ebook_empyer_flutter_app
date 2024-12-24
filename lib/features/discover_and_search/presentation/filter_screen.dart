import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/discover_and_search/widgets/age_filter_widget.dart';
import 'package:abdilahi/features/discover_and_search/widgets/genre_filter_widget.dart';
import 'package:abdilahi/features/discover_and_search/widgets/language_filter_widget.dart';
import 'package:abdilahi/features/discover_and_search/widgets/price_filter_widget.dart';
import 'package:abdilahi/features/discover_and_search/widgets/rating_filter_widget.dart';
import 'package:abdilahi/features/discover_and_search/widgets/short_filter_widget.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedTab = "Sort";

  final List<Map<String, dynamic>> tabData = [
    {
      "title": "Sort",
      "options": ["Trending", "New Releases", "Highest Rating", "Lowest Price"]
    },
    {
      "title": "Price",
      "options": ["0 - 10", "10 - 20", "20 - 30", "30 - 50"]
    },
    {
      "title": "Rating",
      "options": ["All Ratings", "4.5+", "4.0+", "3.5+"]
    },
    {
      "title": "Genre",
      "options": [
        "Action",
        "Adventure",
        "Romance",
        "Comedy",
        "Fantasy",
        "Mystery"
      ]
    },
    {
      "title": "Language",
      "options": ["All", "English", "Other Languages"]
    },
    {
      "title": "Age",
      "options": ["20", "21", "87"]
    },
  ];

  Map<String, bool> switchStates = {
    "Trending": false,
    "New Releases": false,
    "Highest Rating": false,
    "Lowest Price": false,
  };

  @override
  Widget build(BuildContext context) {
    // Get options for the selected tab dynamically.

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Filter',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Tabs section.
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: tabData.map((tab) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = tab["title"];
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: FilterTab(
                          title: tab["title"],
                          isSelected: selectedTab == tab["title"],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              UIHelper.verticalSpace(16.h),

              if (selectedTab == "Sort") ...[
                const ShortFilterWidget(),
                UIHelper.verticalSpace(16.h),
                const PriceFilterWidget(),
                UIHelper.verticalSpace(16.h),
                const RatingFilterWidget(),
                UIHelper.verticalSpace(16.h),
                const GenreFilterWidget(),
                UIHelper.verticalSpace(16.h),
                const LanguageFilterWidget(),
                UIHelper.verticalSpace(16.h),
                const AgeFilterWidget(),
              ] else if (selectedTab == "Price") ...[
                const PriceFilterWidget(),
              ] else if (selectedTab == "Rating") ...[
                const RatingFilterWidget(),
              ] else if (selectedTab == "Genre") ...[
                const GenreFilterWidget(),
              ] else if (selectedTab == "Language") ...[
                const LanguageFilterWidget(),
              ] else if (selectedTab == "Age") ...[
                const AgeFilterWidget(),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class FilterTab extends StatelessWidget {
  final String title;
  final bool isSelected;

  const FilterTab({required this.title, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.c743DFF : Colors.white,
        borderRadius: BorderRadius.circular(34.r),
        border: Border.all(color: AppColors.c743DFF, width: 1),
      ),
      child: Center(
        child: Text(title,
            style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
              fontSize: 12.sp,
              letterSpacing: -0.24.sp,
              fontWeight: FontWeight.w500,
              height: 1.3.h,
              color: isSelected ? AppColors.cFFFFFF : AppColors.c743DFF,
            )),
      ),
    );
  }
}
