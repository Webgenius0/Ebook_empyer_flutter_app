import 'package:abdilahi/common_widgets/custom_horizontal_divider.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchTypeKeywordScreen extends StatefulWidget {
  const SearchTypeKeywordScreen({Key? key}) : super(key: key);

  @override
  _SearchTypeKeywordScreenState createState() =>
      _SearchTypeKeywordScreenState();
}

class _SearchTypeKeywordScreenState extends State<SearchTypeKeywordScreen> {
  final TextEditingController _controller = TextEditingController();

  void _removeLastCharacter() {
    final text = _controller.text;
    if (text.isNotEmpty) {
      setState(() {
        _controller.text = text.substring(0, text.length - 1);
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length),
        );
      });
    }
  }

  final List<String> previousSearches = [
    "Harry Potter and the Half Blood Prince",
    "Harry Potter and the Half Blood Prince",
    "Harry Potter and the Half Blood Prince",
    "Harry Potter and the Half Blood Prince",
    "Harry Potter and the Half Blood Prince",
    "Harry Potter and the Half Blood Prince",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF5F6F7,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: Column(
            children: [
              UIHelper.verticalSpace(24.h),
              Row(
                children: [
                  Transform.translate(
                    offset: Offset(-8.w, 0),
                    child: InkWell(
                      onTap: () {
                        NavigationService.goBack();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: SvgPicture.asset(Assets.icons.arrowBack),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: AppColors.c926BF4.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: AppColors.c926BF4, width: 1),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          UIHelper.horizontalSpace(8.w),
                          InkWell(
                            onTap: () {
                              NavigationService.navigateTo(Routes.searchScreen);
                            },
                            child: SvgPicture.asset(
                              Assets.icons.searchLogo,
                              height: 16.w,
                              width: 16.w,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              controller: _controller, // Attach the controller
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 14.h),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: _removeLastCharacter,
                            icon: SvgPicture.asset(Assets.icons.close),
                            iconSize: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpace(24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Previous search",
                    style: TextFontStyle.textStyle20c212121UrbanistW600
                        .copyWith(fontSize: 16),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        previousSearches.clear();
                      });
                    },
                    icon: Icon(
                      Icons.clear,
                      color: AppColors.c743DFF,
                      size: 25.w,
                    ),
                  ),
                ],
              ),
              const CustomHorizontalDivider(),
              Expanded(
                child: previousSearches.isEmpty
                    ? Center(
                        child: Text(
                          "No previous searches",
                          style: TextFontStyle.textStyle20c212121UrbanistW600
                              .copyWith(fontSize: 14),
                        ),
                      )
                    : ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: previousSearches.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  previousSearches[index],
                                  style: TextFontStyle
                                      .textStyle10c4B586BUrbanistW500
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.clear,
                                      color: AppColors.c484C52),
                                  onPressed: () {
                                    setState(() {
                                      previousSearches.removeAt(index);
                                    });
                                  },
                                ),
                              ),
                              UIHelper.verticalSpace(4.h),
                            ],
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
