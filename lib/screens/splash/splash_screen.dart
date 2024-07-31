import 'dart:async';

import 'package:explore_dubai/screens/auth/login_screen.dart';
import 'package:explore_dubai/utils/app_colors.dart';
import 'package:explore_dubai/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogoWidget(
        child: Center(
          child: Text(
            "Explore Dubai\n with us",
            textAlign: TextAlign.center,
            style: GoogleFonts.acme(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryWhite,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
