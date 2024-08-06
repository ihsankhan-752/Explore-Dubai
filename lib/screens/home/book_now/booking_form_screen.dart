import 'package:explore_dubai/utils/text_styles.dart';
import 'package:explore_dubai/widgets/text_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingFormScreen extends StatelessWidget {
  const BookingFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              "Please Fill the form for booking confirmation",
              style: AppTextStyle.primaryBold,
            ),
            SizedBox(height: 10.h),
            Text("Full name", style: AppTextStyle.primaryMedium),
            SizedBox(height: 3.h),
            CustomTextInput(hintText: 'John Doe', icon: Icons.person),
            SizedBox(height: 10.h),
            Text("Email", style: AppTextStyle.primaryMedium),
            SizedBox(height: 3.h),
            CustomTextInput(hintText: 'John Doe', icon: Icons.email_outlined),
          ],
        ),
      ),
    );
  }
}
