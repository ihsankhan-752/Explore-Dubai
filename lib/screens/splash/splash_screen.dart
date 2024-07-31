import 'package:explore_dubai/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/first.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(AppColors.primaryBlack.withOpacity(0.3), BlendMode.srcATop),
          ),
        ),
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
