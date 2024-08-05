import 'package:explore_dubai/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/lists.dart';
import '../../../../utils/app_colors.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: dubaiPopularPlaces.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 05,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(AppColors.primaryBlack.withOpacity(0.1), BlendMode.srcATop),
                      image: NetworkImage(dubaiPopularPlaces[index].placeImage),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(color: AppColors.primaryWhite.withOpacity(0.7), shape: BoxShape.circle),
                      child: const Center(
                        child: Icon(Icons.bookmark_border, size: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 05, vertical: 07),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dubaiPopularPlaces[index].placeName,
                        style: AppTextStyle.primaryBold.copyWith(fontSize: 12),
                      ),
                      const Spacer(),
                      Text(
                        "${dubaiPopularPlaces[index].price?.toStringAsFixed(1)} AED",
                        style: AppTextStyle.primaryMedium.copyWith(fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
