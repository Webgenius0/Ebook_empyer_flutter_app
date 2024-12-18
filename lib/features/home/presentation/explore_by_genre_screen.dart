import 'package:abdilahi/common_widgets/custom_genre_card.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/home/model/genre_model.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExploreByGenreScreen extends StatefulWidget {
  const ExploreByGenreScreen({Key? key}) : super(key: key);

  @override
  _ExploreByGenreScreenState createState() => _ExploreByGenreScreenState();
}

class _ExploreByGenreScreenState extends State<ExploreByGenreScreen> {
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
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
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
                    "Explore by Genre",
                    style: TextFontStyle.textStyle20c2B2B2BUrbanistW600,
                  ),
                  SvgPicture.asset(
                    Assets.icons.setting,
                    width: 24.w, // Added width and height for consistency
                    height: 24.h,
                  ),
                ],
              ),

              SizedBox(height: 16.h),

              // Genre Grid
              Expanded(
                child: GridView.builder(
                  shrinkWrap:
                      true, // Ensures better performance on small screens
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.w,
                    mainAxisSpacing: 4.h,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: genres.length,
                  itemBuilder: (context, idx) {
                    final genre = genres[idx];
                    return CustomGenreCard(
                      text: genre.title,
                      imageUrl: genre.imageUrl,
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
