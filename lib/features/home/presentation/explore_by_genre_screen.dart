import 'package:abdilahi/common_widgets/custom_genre_card.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/features/home/model/genre_model.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExploreByGenreScreen extends StatefulWidget {
  const ExploreByGenreScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
          'Explore by Genre',
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
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(16.h),

              // ),

              // Genre Grid
              Expanded(
                child: GridView.builder(
                  shrinkWrap:
                      true, // Ensures better performance on small screens
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 4.7 / 3.2,
                  ),
                  itemCount: genres.length,
                  itemBuilder: (context, idx) {
                    final genre = genres[idx];
                    return GestureDetector(
                      onTap: () {
                        NavigationService.navigateTo(
                            Routes.specificGenrescreen);
                      },
                      child: CustomGenreCard(
                        text: genre.title,
                        imageUrl: genre.imageUrl!,
                        width: 165.w,
                      ),
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
