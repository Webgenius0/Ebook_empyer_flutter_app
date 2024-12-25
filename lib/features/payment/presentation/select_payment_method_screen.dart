import 'package:abdilahi/common_widgets/custom_payment_bookItem.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SelectPaymentMethodScreen extends StatefulWidget {
  const SelectPaymentMethodScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SelectPaymentMethodScreenState createState() =>
      _SelectPaymentMethodScreenState();
}

class _SelectPaymentMethodScreenState extends State<SelectPaymentMethodScreen> {
  final List<Map<String, dynamic>> paymentMethods = [
    {
      'image': Assets.images.paypal.path,
      'title': "Paypal",
    },
    {
      'image': Assets.images.google.path,
      'title': "Google Pay",
    },
    {
      'image': Assets.images.apple.path,
      'title': "Apple Pay",
    },
    {
      'image': Assets.images.masterCard.path,
      'title': ".... .... .... 6578",
    },
    // Add more items here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => NavigationService.goBack,
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
          'Select Payment method',
          style: TextFontStyle.textStyle20c2B2B2BUrbanistW600.copyWith(
              color: AppColors.c2B2B2B, fontSize: 20.sp, letterSpacing: -0.4),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                NavigationService.navigateTo(Routes.addNewPaymentScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 18.w),
                child: SvgPicture.asset(Assets.icons.addFoloder),
              ))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          children: [
            CustomPaymentBookCard(
              hasOption: true,
              imagePath: Assets.images.relax.path,
              title: "I Killed Zoe Spanos",
              rating: 4.7,
              price: 76,
              author: 'Douglas Adams',
              labels: const [
                " Galaxy",
                "Comedy",
                "Science fiction",
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Container(
              width: double.infinity,
              height: 1.h,
              color: AppColors.cE2E2E2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: paymentMethods.length,
                itemBuilder: (context, index) {
                  final method = paymentMethods[index];
                  return Column(
                    children: [
                      UIHelper.verticalSpace(20.h),
                      InkWell(
                        onTap: () {
                          NavigationService.navigateTo(
                              Routes.paymentSummaryScreen);
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              method['image'],
                              width: 56.w,
                              height: 56.h,
                            ),
                            UIHelper.horizontalSpace(10.w),
                            Text(
                              method['title'],
                              style: TextFontStyle
                                  .textStyle12c000000UrbanistW500
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                                Assets.icons.arrowRightNotification),
                          ],
                        ),
                      ),
                      UIHelper.verticalSpace(20.h),
                      Container(
                        width: double.infinity,
                        height: 1.h,
                        color: AppColors.cE2E2E2,
                      ),
                    ],
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
