import 'package:abdilahi/common_widgets/custom_purchased_card.dart';
import 'package:abdilahi/features/home/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchasedEbookScreen extends StatefulWidget {
  const PurchasedEbookScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PurchasedEbookScreenState createState() => _PurchasedEbookScreenState();
}

class _PurchasedEbookScreenState extends State<PurchasedEbookScreen> {
  final List<BookModel> books = [
    BookModel(
      imageUrl: Assets.images.relax.path,
      title: "I Killed Zoe Spanos",
      rating: 4.7,
      price: 76.00,
      author: "Douglas Adams",
      labels: [
        " Galaxy",
        "Comedy",
        "Science fiction",
      ],
    ),
    BookModel(
      imageUrl: Assets.images.scarlet.path,
      title: "The Scarlet Letter",
      rating: 4.8,
      price: 39.99,
      author: "Douglas Adams",
      labels: [
        " Galaxy",
        "Comedy",
        "Science fiction",
      ],
    ),
    BookModel(
      imageUrl: Assets.images.scarlet.path,
      title: "The Scarlet Letter",
      rating: 4.3,
      price: 24.99,
      author: "Douglas Adams",
      labels: [
        " Galaxy",
        "Comedy",
        "Science fiction",
      ],
    ),
    BookModel(
      imageUrl: Assets.images.e4.path,
      title: "One Hundred Years of Solitude",
      rating: 4.3,
      price: 24.99,
      author: "Douglas Adams",
      labels: [
        " Galaxy",
        "Comedy",
        "Science fiction",
      ],
    ),
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
      author: "Douglas Adams",
      labels: [
        " Galaxy",
        "Comedy",
        "Science fiction",
      ],
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
                    InkWell(
                        onDoubleTap: () {
                          NavigationService.navigateTo(
                              Routes.notificationEmptyScreen);
                        },
                        child: SvgPicture.asset(Assets.icons.ebookSmall)),
                    Text(
                      'Purchased',
                      style: TextFontStyle.textStyle20c2B2B2BUrbanistW600
                          .copyWith(
                              color: AppColors.c2B2B2B,
                              fontSize: 20.sp,
                              letterSpacing: -0.4),
                    ),
                    InkWell(
                        onTap: () {
                          NavigationService.navigateTo(Routes.searchScreen);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(right: 18.w),
                            child: SvgPicture.asset(Assets.icons.searchLogo))),
                  ],
                ),
                UIHelper.verticalSpace(24.h),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: books.length,
                  itemBuilder: (context, idx) {
                    final book = books[idx];
                    return Column(
                      children: [
                        CustomPurchasedCard(
                          isDownloaded: book.isDownloaded,
                          imagePath: book.imageUrl,
                          title: book.title,
                          author: book.author,
                          labels: book.labels ?? [],
                          rating: book.rating,
                          price: book.price,
                          onOptionSelected: (option) {
                            if (option == 1) {
                              setState(() {
                                books[idx].isDownloaded = false;
                              });
                            } else if (option == 2) {
                              setState(() {
                                books[idx].isDownloaded = true;
                              });
                            } else if (option == 3) {
                              NavigationService.navigateTo(
                                  Routes.aboutBookScreen);
                            }
                          },
                        ),
                        UIHelper.verticalSpace(12.h),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
