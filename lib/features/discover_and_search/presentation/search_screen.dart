// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:abdilahi/common_widgets/custom_bookcard.dart';
import 'package:abdilahi/common_widgets/custom_bookcard2.dart';
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

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _isToogle = true;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  void _toggleState() {
    setState(() {
      _isToogle = !_isToogle; // Toggles the state
    });
  }

  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
    });
  }

  final List<BookModel> books = [
    BookModel(
        imageUrl: Assets.images.e1.path,
        title: "One Hundred Years of Solitude",
        rating: 4.5,
        price: 29.99,
        labels: const [" Galaxy", "Comedy", "Science fiction", "Mystery"],
        author: " Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e2.path,
        title: "Adventures of Huckleberry Finn",
        rating: 4.8,
        price: 39.99,
        labels: const [" Galaxy", "Comedy", "Science fiction", "Mystery"],
        author: "Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e2.path,
        title: "Adventures of Huckleberry Finn",
        rating: 4.8,
        price: 39.99,
        labels: const [" Galaxy", "Comedy", "Science fiction", "Mystery"],
        author: "Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e3.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        labels: const [" Galaxy", "Comedy", "Science fiction", "Mystery"],
        author: "Douglas Adams"),
    BookModel(
        imageUrl: Assets.images.e3.path,
        title: "One Hundred Years of Solitude",
        rating: 4.3,
        price: 24.99,
        labels: const [" Galaxy", "Comedy", "Science fiction", "Mystery"],
        author: "Douglas Adams"),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredBooks = books.where((book) {
      return book.title.toLowerCase().contains(_searchQuery) ||
          book.author.toLowerCase().contains(_searchQuery);
    }).toList();

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: SvgPicture.asset(
                      Assets.icons.arrowBack,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                ),
                Container(
                  width: 295.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.c926BF4),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: SvgPicture.asset(
                          Assets.icons.searchLogo,
                          height: 16.h,
                          width: 16.h,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          onChanged: _updateSearchQuery,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            _searchController.clear();
                            _updateSearchQuery('');
                          },
                          child: GestureDetector(
                              onTap: () {
                                NavigationService.navigateTo(
                                    Routes.filterScreen);
                              },
                              child: InkWell(
                                  onTap: () {
                                    NavigationService.navigateTo(
                                        Routes.filterScreen);
                                  },
                                  child:
                                      SvgPicture.asset(Assets.icons.filter))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(16.h),
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
                        child: _isToogle
                            ? SvgPicture.asset(Assets.icons.boxBlue)
                            : SvgPicture.asset(Assets.icons.boxWhite)),
                    SizedBox(
                      width: 12.w,
                    ),
                    GestureDetector(
                        onTap: _toggleState,
                        child: !_isToogle
                            ? SvgPicture.asset(Assets.icons.sortBlue)
                            : SvgPicture.asset(Assets.icons.sortblack)),
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
                      itemCount: filteredBooks.length,
                      itemBuilder: (context, idx) {
                        final book = filteredBooks[idx];
                        return BookCard(
                          imageUrl: book.imageUrl,
                          title: book.title,
                          rating: book.rating,
                          price: book.price,
                        );
                      },
                    )
                  : ListView.builder(
                      itemCount: filteredBooks.length,
                      itemBuilder: (context, idx) {
                        final book = filteredBooks[idx];
                        return BookItem(
                          imagePath: book.imageUrl,
                          title: book.title,
                          author: book.author,
                          labels: book.labels ?? [],
                          rating: book.rating,
                          price: book.price,
                        );
                      },
                    ),
            ),
          ],
        ),
      )),
    );
  }
}
