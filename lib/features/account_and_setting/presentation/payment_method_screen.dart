// ignore_for_file: library_private_types_in_public_api

import 'package:abdilahi/common_widgets/custom_payment_widget.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodScreen extends StatefulWidget {
  // ignore: use_super_parameters
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  final List<Map<String, dynamic>> paymentItems = [
    {
      'icon': Assets.icons.googlePay, // Replace with your asset path
      'text': 'Payment',
      // 'iconColor': AppColors.c743DFF,
      // 'route': PersonalInfoScreen(),
      // Replace with your actual screen.
    },
    {
      'icon': Assets.icons.googlePay, // Replace with your asset path
      'text': 'Google Pay',
      // 'iconColor': AppColors.c743DFF,
      // 'route': NotificationScreeen(),
      // Replace with your actual screen.
    },
    {
      'icon': Assets.icons.applePay, // Replace with your asset path
      'text': 'Apple pay',
      // 'iconColor': AppColors.c743DFF,
      // 'route': FaqScreen(),
      // Replace with your actual screen.
    },
    {
      'icon': Assets.icons.masterCard, // Replace with your asset path
      'text': '*** *** *** 6578',
      // 'iconColor': AppColors.c743DFF,
      // 'route': FaqScreen(),
      // Replace with your actual screen.
    },
    {
      'icon': Assets.icons.visa, // Replace with your asset path
      'text': '*** *** *** 6578',
      // 'iconColor': Colors.blue,
      // 'route': FaqScreen(),
      // Replace with your actual screen.
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cF4F5F6,
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 90,
          backgroundColor: AppColors.cF4F5F6,
          leading: IconButton(
            onPressed: () {
              NavigationService.goBack;
            },
            icon: SvgPicture.asset(
              Assets.icons.arrowBack,
              fit: BoxFit.contain,
            ),
          ),
          centerTitle: true,
          title: Text('Payment Methods',
              style: TextFontStyle.textStyle20c212121UrbanistW600.copyWith(
                  fontSize: 20.sp,
                  letterSpacing: -0.4.sp,
                  color: AppColors.c2B2B2B)),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                UIHelper.verticalSpace(24.h),

                // personal info details section start
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  child: ListView.builder(
                    itemCount: paymentItems.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      final item = paymentItems[index];
                      final isLastItem = index == paymentItems.length - 1;
                      return Column(
                        children: [
                          UIHelper.verticalSpace(14.h),
                          CustomPaymentWidget(
                            icon: item['icon'],
                            // iconColor: item['iconColor'],
                            text: item['text'],
                            onTap: () {
                              // if (index == 0) {
                              //   // NavigationService.navigateTo(
                              //   //     Routes.personalInfoScreen);
                              // } else if (index == 1) {
                              //   // NavigationService.navigateTo(Routes.faqScreen);
                              // } else if (index == 2) {
                              //   // NavigationService.navigateTo(Routes.faqScreen);
                              // }
                            },
                            showDivider: !isLastItem,
                          ),
                          if (isLastItem) UIHelper.verticalSpace(10.h),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
