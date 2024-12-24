// ignore_for_file: library_private_types_in_public_api, use_super_parameters

import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:abdilahi/common_widgets/custom_elevated_button.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';

import 'package:abdilahi/helpers/ui_helpers.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
      'image': Assets.images.applePay.path,
      'title': "Apple Pay",
    },
    {
      'image': Assets.images.mastercard.path,
      'title': ".... .... .... 6578",
    },
    {
      'image': Assets.images.visa.path,
      'title': ".... .... .... 6578",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 85,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => NavigationService.goBack,
          icon: SvgPicture.asset(Assets.icons.arrowBack),
        ),
        centerTitle: true,
        title: Text(
          'Payment Methods',
          style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
            fontSize: 20.sp,
            letterSpacing: -0.4.sp,
            color: AppColors.c2B2B2B,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  UIHelper.verticalSpace(24.h),
                  // Payment Methods
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: paymentMethods.length,
                    itemBuilder: (context, index) {
                      final method = paymentMethods[index];
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigate to next screen
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  method['image'],
                                  width: 56.w,
                                  height: 56.h,
                                  fit: BoxFit.contain,
                                ),
                                UIHelper.horizontalSpace(16.w),
                                Text(
                                  method['title'],
                                  style: TextFontStyle
                                      .textStyle12c000000UrbanistW500
                                      .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  Assets.icons.arrowRightNotification,
                                  height: 24.h,
                                  width: 24.w,
                                ),
                              ],
                            ),
                          ),
                          UIHelper.verticalSpace(16.h),
                          Container(
                            width: double.infinity,
                            height: 1.h,
                            color: AppColors.cEBEBEB,
                          ),
                          UIHelper.verticalSpace(16.h),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 1.h,
            color: AppColors.cEBEBEB,
          ),
          UIHelper.verticalSpace(20.h),
          Padding(
            padding: EdgeInsets.only(left: 50.w, right: 50.w, bottom: 55.h),
            child: customElevatedButton(
              bgColor: AppColors.c743DFF,
              child: Text(
                'Add New',
                style: TextFontStyle.textStyle10c4B586BUrbanistW500.copyWith(
                  color: AppColors.cFFFFFF,
                  fontSize: 16.sp,
                ),
              ),
              onPressed: () {
                // Action on Add New Button Press
              },
              isBorder: false,
            ),
          ),
        ],
      ),
    );
  }
}
