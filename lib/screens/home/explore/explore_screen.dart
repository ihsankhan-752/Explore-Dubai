import 'package:explore_dubai/const/lists.dart';
import 'package:explore_dubai/provider/state_selecting_controller.dart';
import 'package:explore_dubai/screens/home/explore/widgets/swiper_widgets.dart';
import 'package:explore_dubai/utils/app_colors.dart';
import 'package:explore_dubai/utils/text_styles.dart';
import 'package:explore_dubai/widgets/text_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: Get.width * 0.76, child: const CustomTextInput(hintText: 'Search', icon: Icons.search)),
                Container(
                  height: 46.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Consumer<StateSelectingController>(builder: (context, stateController, child) {
                    return PopupMenuButton<String>(
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        size: 30,
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
            const SwiperWidget(),
            SizedBox(height: 15.w),
            Row(
              children: [
                Consumer<StateSelectingController>(builder: (context, stateController, child) {
                  return Text(
                    "Top Sights of ${stateController.selectingState}",
                    style: AppTextStyle.primaryBold,
                  );
                }),
                const Spacer(),
                Text(
                  "See all",
                  style: AppTextStyle.primaryBold,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: Get.height * 0.4,
              child: GridView.builder(
                padding: const EdgeInsets.only(bottom: 50),
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 05, crossAxisSpacing: 05),
                itemCount: dubaiPopularPlaces.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      image: DecorationImage(
                        image: NetworkImage(dubaiPopularPlaces[index].placeImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
