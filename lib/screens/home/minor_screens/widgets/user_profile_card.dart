import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/text_styles.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.13,
      child: Card(
        child: Center(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 30),
            ),
            title: Text("Ihsan Khan",
                style: AppTextStyle.primaryBold.copyWith(
                  fontSize: 18,
                )),
            subtitle: Text('Member Since: 2 Aug 2024', style: AppTextStyle.primaryMedium),
          ),
        ),
      ),
    );
  }
}
