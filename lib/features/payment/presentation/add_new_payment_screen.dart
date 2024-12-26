import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddNewPaymentScreen extends StatefulWidget {
  const AddNewPaymentScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddNewPaymentScreenState createState() => _AddNewPaymentScreenState();
}

class _AddNewPaymentScreenState extends State<AddNewPaymentScreen> {
  String cardHolderName = "";
  String cardNumber = "* * * *  * * * *  * * * *  XXXX";
  String expiryDate = "XX/XX";
  String cvv = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          "Add New",
          style: TextFontStyle.textStyle20c2B2B2BUrbanistW600.copyWith(
              color: AppColors.c2B2B2B, fontSize: 20.sp, letterSpacing: -0.4),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Card Preview
              Container(
                height: 180.h,
                decoration: BoxDecoration(
                  color: AppColors.c743DFF,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.r,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 27.w, right: 44.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIHelper.verticalSpace(22.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Assets.images.masterCard.path,
                            height: 40.h,
                          ),
                          // const Text(
                          //   "XXXX",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ],
                      ),
                      UIHelper.verticalSpace(18.h),
                      Text(
                        cardNumber,
                        style: TextFontStyle.textStyle16cFFFFFFBUrbanistW500
                            .copyWith(fontSize: 20.sp),
                      ),
                      UIHelper.verticalSpace(31.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Card Holder Name",
                                  style: TextFontStyle
                                      .textStyle16cFFFFFFBUrbanistW500
                                      .copyWith(
                                    fontSize: 12.sp,
                                    color: TextFontStyle
                                        .textStyle16cFFFFFFBUrbanistW500.color
                                        ?.withOpacity(0.8),
                                  )),
                              UIHelper.verticalSpace(6.5.h),
                              Text(
                                  cardHolderName.isNotEmpty
                                      ? cardHolderName
                                      : "XXXXXXXXX",
                                  style: TextFontStyle
                                      .textStyle16cFFFFFFBUrbanistW500
                                      .copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600)),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Expiry Date",
                                  style: TextFontStyle
                                      .textStyle16cFFFFFFBUrbanistW500
                                      .copyWith(
                                    fontSize: 12.sp,
                                    color: TextFontStyle
                                        .textStyle16cFFFFFFBUrbanistW500.color
                                        ?.withOpacity(0.8),
                                  )),
                              UIHelper.verticalSpace(6.5.h),
                              Text(
                                expiryDate,
                                style: TextFontStyle
                                    .textStyle16cFFFFFFBUrbanistW500
                                    .copyWith(fontSize: 12.sp),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              UIHelper.verticalSpace(24.h),

              // Card Holder Name Input

              Text(
                "Card Holder Name",
                style: TextFontStyle.textStyle24c222222UrbanistW600
                    .copyWith(fontSize: 16.sp),
              ),
              UIHelper.verticalSpace(10.h),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Ex: Saklain Sarowor",
                  hintStyle: TextFontStyle.textStyle14cD0D0D0UrbanistW400,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.c926BF4.withOpacity(0.5),
                    ), // Border when not focused
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: AppColors.c926BF4)),
                ),
                onChanged: (value) {
                  setState(() {
                    cardHolderName = value;
                  });
                },
              ),

              UIHelper.verticalSpace(20.h),

              Text(
                "Card Number",
                style: TextFontStyle.textStyle24c222222UrbanistW600
                    .copyWith(fontSize: 16.sp),
              ),

              UIHelper.verticalSpace(10.h),
              // Card Number Input
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Ex: **** **** **** 3947",
                  hintStyle: TextFontStyle.textStyle14cD0D0D0UrbanistW400,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.c926BF4.withOpacity(0.5),
                    ), // Border when not focused
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: AppColors.c926BF4)),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(12.r), // Rounded corners
                  ),
                ),
                maxLength: 19,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    cardNumber = value.isEmpty
                        ? "* * * *  * * * *  * * * *  XXXX"
                        : value.replaceAllMapped(RegExp(r".{4}"), (match) {
                            return "${match.group(0)} ";
                          }).trim();
                  });
                },
              ),
              UIHelper.verticalSpace(7.h),
              // Expiry Date and CVV Inputs
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVV",
                        style: TextFontStyle.textStyle24c222222UrbanistW600
                            .copyWith(fontSize: 16.sp),
                      ),
                      UIHelper.verticalSpace(10.h),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Ex: 1337",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: AppColors.c926BF4)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.c926BF4.withOpacity(0.5),
                            ), // Border when not focused
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        maxLength: 3,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            cvv = value;
                          });
                        },
                      ),
                    ],
                  )),
                  UIHelper.horizontalSpace(16.h),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiration Date",
                        style: TextFontStyle.textStyle24c222222UrbanistW600
                            .copyWith(fontSize: 16.sp),
                      ),
                      UIHelper.verticalSpace(10.h),
                      TextField(
                        decoration: InputDecoration(
                          // labelText: "Expiration Date",
                          hintText: "03/29",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: AppColors.c926BF4)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.c926BF4.withOpacity(0.5),
                            ), // Border when not focused
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                        maxLength: 5,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            expiryDate = value;
                          });
                        },
                      ),
                    ],
                  )),
                ],
              ),

              UIHelper.verticalSpace(119.h),
              // Add Button
              ElevatedButton(
                onPressed: () {
                  // Handle Add Card Action
                  NavigationService.navigateTo(Routes.selectPaymentTwoScreen);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.c6636EE,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        60.r), // Adjust the radius as needed
                  ),
                ),
                child: const Text(
                  "Add",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
