import 'package:explore_dubai/const/lists.dart';
import 'package:explore_dubai/screens/home/book_now/booking_form_screen.dart';
import 'package:explore_dubai/utils/app_colors.dart';
import 'package:explore_dubai/utils/text_styles.dart';
import 'package:explore_dubai/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PlaceDetailScreen extends StatelessWidget {
  final String image, title;
  const PlaceDetailScreen({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.30,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: AppTextStyle.primaryBold.copyWith(fontSize: 22)),
                      Text("Dubai, AE", style: AppTextStyle.primaryMedium.copyWith(fontSize: 16)),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child: const Center(
                      child: Icon(Icons.bookmark_border),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined, size: 18.w),
                  const SizedBox(width: 05),
                  Text("Hor Al Anz, Deira", style: AppTextStyle.primaryMedium.copyWith(fontSize: 14)),
                  const Spacer(),
                  Text(
                    "250 AED / Person",
                    style: AppTextStyle.primaryMedium.copyWith(
                      fontSize: 12,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: Get.height * 0.06,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dubaiPopularPlaces.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(dubaiPopularPlaces[index].placeImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("About Destination", style: AppTextStyle.primaryBold.copyWith(fontSize: 22)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read More",
                  style: AppTextStyle.primaryMedium),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: PrimaryButton(
          onPressed: () {
            Get.to(() => const BookingFormScreen());
          },
          title: "Book Now",
        ),
      ),
    );
  }
}
