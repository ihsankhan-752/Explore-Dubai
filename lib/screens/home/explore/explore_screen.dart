import 'package:explore_dubai/screens/home/explore/widgets/swiper_widgets.dart';
import 'package:explore_dubai/utils/app_colors.dart';
import 'package:explore_dubai/widgets/text_inputs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: Get.width * 0.76, child: const CustomTextInput(hintText: 'Search', icon: Icons.search)),
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: AppColors.primaryGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.filter_alt_outlined,
                  size: 30,
                  color: AppColors.primaryBlack,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const SwiperWidget(),
        ],
      ),
    );
  }
}
