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
  String cardNumber = "XXXX XXXX XXXX XXXX";
  String expiryDate = "MM/YY";
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
                height: 200,
                decoration: BoxDecoration(
                  color: AppColors.c743DFF,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.r,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Assets.images.masterCard.path,
                            height: 40.h,
                          ),
                          Text(
                            "XXXX",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        cardNumber,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cardHolderName.isNotEmpty
                                ? cardHolderName
                                : "Card Holder Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            expiryDate,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              UIHelper.verticalSpace(20.h),
              // Card Holder Name Input
              TextField(
                decoration: InputDecoration(
                  hintText: "Ex: Saklain Sarowor", // Replaces labelText
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(12.0), // Rounded corners
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    cardHolderName = value;
                  });
                },
              ),

              UIHelper.verticalSpace(20.h),
              // Card Number Input
              TextField(
                decoration: InputDecoration(
                  hintText: "Ex: **** **** **** 3947",
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(12.0), // Rounded corners
                  ),
                ),
                maxLength: 19,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    cardNumber = value.isEmpty
                        ? "XXXX XXXX XXXX XXXX"
                        : value.replaceAllMapped(RegExp(r".{4}"), (match) {
                            return "${match.group(0)} ";
                          }).trim();
                  });
                },
              ),
              SizedBox(height: 20),
              // Expiry Date and CVV Inputs
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "CVV",
                        border: OutlineInputBorder(),
                      ),
                      maxLength: 3,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          cvv = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Expiration Date",
                        hintText: "MM/YY",
                        border: OutlineInputBorder(),
                      ),
                      maxLength: 5,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          expiryDate = value;
                        });
                      },
                    ),
                  ),
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
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        60.r), // Adjust the radius as needed
                  ),
                ),
                child: Text(
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
