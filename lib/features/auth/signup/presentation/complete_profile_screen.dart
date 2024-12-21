import 'dart:io';

import 'package:abdilahi/common_widgets/custom_button_one.dart';
import 'package:abdilahi/common_widgets/custom_country.dart';
import 'package:abdilahi/common_widgets/custom_datepicker_screen.dart';
import 'package:abdilahi/common_widgets/custom_textformfield.dart';
import 'package:abdilahi/constants/text_font_style.dart';
import 'package:abdilahi/gen/assets.gen.dart';
import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/all_routes.dart';
import 'package:abdilahi/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CompleteProfileScreenState createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  File? imageFile;
  final ImagePicker picker =
      ImagePicker(); // Use only the TextEditingController here

// Function to pick an image from gallery or camera
  Future<void> pickImage() async {
    try {
      final XFile? pickedFile =
          await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          imageFile = File(pickedFile.path); // Set the selected file
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  List<String> countries = [
    'United States',
    'Canada',
    'India',
    'Australia',
    'United Kingdom',
    'Germany',
    'France',
    'South Africa',
    'Brazil',
    'Mexico',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 25.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: Offset(-9.w, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(Assets.icons.arrowBack),
                        ),
                      ),
                    ),

                    SizedBox(height: 16.h),
                    Text(
                      "Complete Your Profile.",
                      style: TextFontStyle.textStyle24c000000UrbanistW600,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "Don't worry, only you can see your personal\ndata. NO one else will be able to see it.",
                      style: TextFontStyle.textStyle14c4B586BUrbanistW400,
                    ),
                    SizedBox(height: 30.h),
                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 60.r,
                            backgroundImage: imageFile != null
                                ? FileImage(imageFile!) as ImageProvider
                                : AssetImage(Assets.images.profile.path),
                            backgroundColor:
                                Colors.grey[200], // Fallback background color
                          ),
                          Positioned(
                            bottom: -2,
                            right: 10,
                            child: GestureDetector(
                              onTap: () =>
                                  pickImage(), // Call the method to pick an image
                              child: Container(
                                height: 28.h,
                                width: 28.w,
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: AppColors.c743DFF,
                                    borderRadius: BorderRadius.circular(100)),
                                child: SvgPicture.asset(
                                  Assets.icons.pen,
                                  height: 28.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 30.h),
                    Text(
                      "Full Name",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    const CustomTextFormField(
                      hintText: "Saklain Sarowor",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Date of Birth",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    // CustomTextFormField(
                    //   hintText: "1 January, 2003",
                    // ),
                    const CustomDatePickerField(
                      hintText: "1 January, 2003",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Country",
                      style: TextFontStyle.textStyle14c212121UrbanistW600,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    CustomCountryPickerField(
                      countries: countries,
                    ),
                    SizedBox(height: 120.h),
                    CustomButtonOne(
                      text: "Continue",
                      backgroundColor: AppColors.c743DFF,
                      onPressed: () {
                        NavigationService.navigateTo(
                            Routes.createAccountScreen);
                      },
                      style: TextFontStyle.textStyle16cFFFFFFUrbanistW600,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
