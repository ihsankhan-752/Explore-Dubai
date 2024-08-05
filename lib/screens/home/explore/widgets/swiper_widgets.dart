import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/lists.dart';
import '../../../../utils/app_colors.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: Get.height * 0.26,
        child: Swiper(
          itemBuilder: (context, index) {
            final image = imagesList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
          indicatorLayout: PageIndicatorLayout.COLOR,
          autoplay: true,
          itemCount: imagesList.length,
          pagination: const SwiperPagination(),
          control: SwiperControl(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
