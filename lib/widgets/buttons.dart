import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const PrimaryButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 55.h,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryWhite,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
