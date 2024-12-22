import 'dart:ui';

import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/common_widgets/custom_horizontal_divider.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:abdilahi/common_widgets/custom_payment_bookItem.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentSummaryScreen extends StatefulWidget {
  const PaymentSummaryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaymentSummaryScreenState createState() => _PaymentSummaryScreenState();
}

class _PaymentSummaryScreenState extends State<PaymentSummaryScreen> {
  bool isCloseButtonActive = true;
  void showCustomAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Blurred background
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.2), // Optional dark overlay
              ),
            ),
            Center(
              child: Container(
                width: 342.w,
                height: 486.h,
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SvgPicture.asset(Assets.icons.frame),
                      Image.asset(
                        Assets.images.purchaseSuccessful.path,
                        height: 126.h,
                        width: 126.w,
                      ),
                      Text(
                        "Successful Purchase!",
                        style: TextFontStyle.textStyle24c743DFFUrbanistW700
                            .copyWith(
                                decoration: TextDecoration.none,
                                color: AppColors.c743DFF),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "You have successfully  purchased Harry Potter and the Deathly Hallows.",
                        textAlign: TextAlign.center,
                        style: TextFontStyle.textStyle16c000000UrbanistW400
                            .copyWith(
                                decoration: TextDecoration.none, height: 1.6),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: 135.w,
                              height: 48.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.cFFFFFF,
                                border: Border.all(
                                  color: AppColors.c743DFF,
                                ),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Text(
                                "Close",
                                style: TextFontStyle
                                    .textStyle16c000000UrbanistW400
                                    .copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              // Add logic to open eBook or navigate
                            },
                            child: Container(
                              width: 135.w,
                              height: 48.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.c743DFF,
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Text(
                                "Open Ebook",
                                style: TextFontStyle
                                    .textStyle16c000000UrbanistW400
                                    .copyWith(
                                        decoration: TextDecoration.none,
                                        color: AppColors.cF0F0F0,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 40.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Padding(
            padding: EdgeInsets.all(10.0),
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
              onTap: () {},
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

            UIHelper.verticalSpace(20.h),

            //payment total card

            Container(
              padding: const EdgeInsets.all(16),
              width: 370.w,
              height: 155.h,
              decoration: BoxDecoration(
                  color: AppColors.cFAFAFA,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.cEBEBEB)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price",
                        style: TextFontStyle.textStyle14c545A63UrbanistW400,
                      ),
                      Text(
                        "\$99",
                        style: TextFontStyle.textStyle12c000000UrbanistW500
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 14.sp),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tax",
                        style: TextFontStyle.textStyle14c545A63UrbanistW400,
                      ),
                      Text(
                        "\$99",
                        style: TextFontStyle.textStyle12c000000UrbanistW500
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 14.sp),
                      )
                    ],
                  ),
                  const CustomHorizontalDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total(Usd)",
                        style: TextFontStyle.textStyle14c545A63UrbanistW400,
                      ),
                      Text(
                        "\$99",
                        style: TextFontStyle.textStyle12c000000UrbanistW500
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 14.sp),
                      )
                    ],
                  )
                ],
              ),
            ),
            //card ends here

            UIHelper.verticalSpace(20.h),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Select Payment method',
                style: TextFontStyle.textStyle20c2B2B2BUrbanistW600.copyWith(
                    color: AppColors.c2B2B2B,
                    fontSize: 20.sp,
                    letterSpacing: -0.4),
              ),
            ),

            UIHelper.verticalSpace(20.h),

            Row(
              children: [
                Image.asset(
                  Assets.images.masterCard.path,
                  width: 56.w,
                  height: 56.h,
                ),
                UIHelper.horizontalSpace(10.w),
                Text(
                  ".... .... .... 6578",
                  style: TextFontStyle.textStyle12c000000UrbanistW500
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 14.sp),
                ),
                const Spacer(),
                Text(
                  "Chnage",
                  style: TextFontStyle.textStyle14c743DFFUrbanistW400.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),

            const CustomHorizontalDivider(),
            UIHelper.verticalSpace(20.h),
            CustomButtonOne(
              text: "Confirm Payment",
              backgroundColor: AppColors.c743DFF,
              onPressed: () {
                showCustomAlert(context);
              },
              style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
            ),
          ],
        ),
      )),
    );
  }
}
