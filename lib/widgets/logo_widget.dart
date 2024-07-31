import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class LogoWidget extends StatelessWidget {
  final Widget child;
  const LogoWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/first.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(AppColors.primaryBlack.withOpacity(0.5), BlendMode.srcATop),
        ),
      ),
      child: child,
    );
  }
}
