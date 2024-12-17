import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:abdilahi/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: Image.asset(
            Assets.images.ebookEmpyreLogo13.path,
            height: 136.h,
            width: 227.w,
          ),
        ),
        Positioned(
            left: 180.w,
            bottom: 60.h,
            child: const CircularProgressIndicator.adaptive())
      ],
    ));
  }
}
