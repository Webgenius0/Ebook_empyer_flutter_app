import 'package:abdilahi/common_widgets/custom_button_one.dart';
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
            UIHelper.verticalSpace(185.h),
            Center(
              child: Image.asset(
                Assets.images.emptyPayment.path,
                width: 131.w,
                height: 116.h,
              ),
            ),
            UIHelper.verticalSpace(6.h),
            Center(
              child: Text(
                  'There is no card right now. you can Add\n   card by clicking the add card now.',
                  style: TextFontStyle.textStyle20c2B2B2BUrbanistW600.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.6.h)),
            ),
            UIHelper.verticalSpace(39.h),
            CustomButtonOne(
              text: "Add Card",
              backgroundColor: AppColors.c743DFF,
              onPressed: () {
                NavigationService.navigateTo(Routes.addNewPaymentScreen);
              },
              style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
            ),
          ],
        ),
      )),
    );
  }
}
