import 'package:abdilahi/common_widgets/custom_horizontal_divider.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DummyDiscover extends StatefulWidget {
  const DummyDiscover({Key? key}) : super(key: key);

  @override
  _DummyDiscoverState createState() => _DummyDiscoverState();
}

class _DummyDiscoverState extends State<DummyDiscover> {
  final List<String> previousSearches =
      List.filled(50, "Harry Potter and the Half Blood Prince");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF5F6F7,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: Column(
            children: [
              UIHelper.verticalSpace(24.h),
              Row(
                children: [
                  Transform.translate(
                    offset: Offset(-8.w, 0),
                    child: InkWell(
                      onTap: () {
                        NavigationService.goBack;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(Assets.icons.arrowBack),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: AppColors.c926BF4.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                            color: AppColors.c926BF4,
                            width: 1), // Purple border
                      ),
                      child: Row(
                        children: [
                          UIHelper.horizontalSpace(8.w),

                          const Icon(Icons.search,
                              color: Colors.black54, size: 20), // Search icon
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 8),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.clear, color: Colors.black54),
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
              // Remove Expanded and use Flexible ListView
              Expanded(
                child: ListView.builder(
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
                            style: TextFontStyle.textStyle10c4B586BUrbanistW500
                                .copyWith(
                                    fontWeight: FontWeight.w400, fontSize: 14),
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
