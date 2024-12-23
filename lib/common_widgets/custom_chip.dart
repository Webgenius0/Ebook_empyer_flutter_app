import 'package:abdilahi/gen/colors.gen.dart';
import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChip extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isSelected;

  const CustomChip({
    super.key,
    required this.text,
    this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.c743DFF : Colors.white,
          border: Border.all(
            color: AppColors.c743DFF,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: isSelected ? Colors.white : AppColors.c743DFF,
              size: 10,
            ),
            UIHelper.horizontalSpace(6.w),
            Text(
              text,
              style: GoogleFonts.urbanist(
                color: isSelected ? Colors.white : AppColors.c743DFF,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
