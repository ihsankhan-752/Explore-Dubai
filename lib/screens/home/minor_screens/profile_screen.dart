import 'package:explore_dubai/screens/home/minor_screens/widgets/user_profile_card.dart';
import 'package:explore_dubai/utils/app_colors.dart';
import 'package:explore_dubai/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            const UserProfileCard(),
            const SizedBox(height: 30),
            const CustomListTile(title: 'My Profile'),
            const CustomListTile(title: 'My Blogs'),
            const CustomListTile(title: 'Saved Places'),
            const CustomListTile(title: 'Saved Blogs'),
            const CustomListTile(title: 'Saved Restaurants'),
            const CustomListTile(title: 'Language'),
            const CustomListTile(title: 'LogOut'),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;
  final Widget? sfxWidget;
  final Function()? onPressed;
  const CustomListTile({super.key, required this.title, this.sfxWidget, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: AppTextStyle.primaryBold),
            GestureDetector(
              onTap: onPressed ?? () {},
              child: sfxWidget ??
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.w,
                    color: AppColors.primaryBlack,
                  ),
            ),
          ],
        ),
        Divider(height: 20.h),
        SizedBox(height: 10.h),
      ],
    );
  }
}
