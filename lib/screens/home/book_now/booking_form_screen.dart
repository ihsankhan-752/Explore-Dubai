import 'package:explore_dubai/utils/text_styles.dart';
import 'package:explore_dubai/widgets/buttons.dart';
import 'package:explore_dubai/widgets/text_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
        child: SingleChildScrollView(
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
              const CustomTextInput(hintText: 'John Doe', icon: Icons.person),
              SizedBox(height: 10.h),
              Text("Email", style: AppTextStyle.primaryMedium),
              SizedBox(height: 3.h),
              const CustomTextInput(hintText: 'John.123@john.com', icon: Icons.email_outlined),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contact", style: AppTextStyle.primaryMedium),
                      SizedBox(height: 3.h),
                      SizedBox(
                        width: Get.width * 0.46,
                        child: const CustomTextInput(hintText: '551231231', icon: Icons.phone_android),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("WhatsApp", style: AppTextStyle.primaryMedium),
                      SizedBox(height: 3.h),
                      SizedBox(
                        width: Get.width * 0.46,
                        child: const CustomTextInput(hintText: '551231231', icon: FontAwesomeIcons.whatsapp),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Text("Number of persons", style: AppTextStyle.primaryMedium),
              SizedBox(height: 3.h),
              const CustomTextInput(hintText: '5', icon: Icons.group),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select Date", style: AppTextStyle.primaryMedium),
                      SizedBox(height: 3.h),
                      SizedBox(
                        width: Get.width * 0.47,
                        child:
                            CustomTextInput(hintText: DateFormat('dd-MM-y').format(DateTime.now()), icon: Icons.calendar_month),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select Time", style: AppTextStyle.primaryMedium),
                      SizedBox(height: 3.h),
                      SizedBox(
                        width: Get.width * 0.46,
                        child: CustomTextInput(hintText: TimeOfDay.now().format(context), icon: Icons.schedule),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  Text("I agree with Terms & Condition", style: AppTextStyle.primaryBold),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(10),
        child: PrimaryButton(
          title: "Confirm",
        ),
      ),
    );
  }
}
