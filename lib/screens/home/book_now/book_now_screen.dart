import 'package:explore_dubai/screens/home/book_now/widgets/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../const/lists.dart';
import '../../../provider/state_selecting_controller.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/text_inputs.dart';

class BookNowScreen extends StatelessWidget {
  const BookNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: Get.width * 0.76, child: const CustomTextInput(hintText: 'Search', icon: Icons.search)),
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Consumer<StateSelectingController>(builder: (context, stateController, child) {
                  return PopupMenuButton<String>(
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      size: 30.w,
                      color: AppColors.primaryBlack,
                    ),
                    onSelected: (String v) {
                      stateController.setNewState = v;
                    },
                    itemBuilder: (BuildContext context) {
                      return dubaiStateNames.map((String state) {
                        return PopupMenuItem<String>(
                          value: state,
                          child: Text(state),
                        );
                      }).toList();
                    },
                  );
                }),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text("Book Destination", style: AppTextStyle.primaryBold),
              const Spacer(),
              Text("See All", style: AppTextStyle.primaryBold),
            ],
          ),
          SizedBox(height: 20.h),
          const BookingCard(),
        ],
      ),
    );
  }
}
