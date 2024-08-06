import 'package:explore_dubai/const/lists.dart';
import 'package:explore_dubai/utils/app_colors.dart';
import 'package:explore_dubai/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("All Blogs"),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.person),
                        ),
                        title: Text(
                          "Ihsan Khan",
                          style: AppTextStyle.primaryBold.copyWith(
                            color: AppColors.primaryBlack,
                          ),
                        ),
                        subtitle: Text(
                          "27-Jul-2024",
                          style: AppTextStyle.primaryMedium.copyWith(
                            color: AppColors.primaryBlack.withOpacity(0.5),
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                      Container(
                        height: Get.height * 0.3,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              dubaiPopularPlaces[index].placeImage,
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(AppColors.primaryBlack.withOpacity(0.15), BlendMode.srcATop),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Icon(Icons.favorite, color: Colors.red),
                          const SizedBox(width: 05),
                          const Text("12"),
                          const SizedBox(width: 30),
                          Icon(
                            FontAwesomeIcons.share,
                            size: 20,
                            color: AppColors.primaryBlack.withOpacity(0.6),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Text("Enjoy The View from Almost 5 feet near", style: AppTextStyle.primaryBold),
                      const Divider(),
                      const SizedBox(height: 10),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
