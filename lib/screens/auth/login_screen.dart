import 'package:explore_dubai/screens/auth/forgot_password_screen.dart';
import 'package:explore_dubai/screens/auth/sign_up_screen.dart';
import 'package:explore_dubai/widgets/buttons.dart';
import 'package:explore_dubai/widgets/logo_widget.dart';
import 'package:explore_dubai/widgets/text_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogoWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Explore Dubai\n with us",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.acme(
                    fontSize: 35.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryWhite,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              const CustomTextInput(
                hintText: 'Email',
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 20.h),
              CustomTextInput(
                hintText: 'Password',
                icon: Icons.lock,
                isSecureText: _isVisible,
                suffixWidget: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    child: Icon(_isVisible ? Icons.visibility_off : Icons.visibility)),
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {
                  Get.to(() => const ForgotPasswordScreen());
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.nunito(
                      fontSize: 16.sp,
                      color: AppColors.primaryWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.sp),
              const PrimaryButton(title: "Login"),
              SizedBox(height: 30.sp),
              GestureDetector(
                onTap: () {
                  Get.offAll(() => const SignUpScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.primaryWhite.withOpacity(0.9),
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: AppColors.primaryWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
