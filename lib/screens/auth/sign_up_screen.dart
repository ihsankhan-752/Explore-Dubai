import 'package:explore_dubai/screens/auth/login_screen.dart';
import 'package:explore_dubai/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../widgets/buttons.dart';
import '../../widgets/logo_widget.dart';
import '../../widgets/text_inputs.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = true;
  bool _isConfirmPasswordVisible = true;
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
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryWhite,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const CustomTextInput(
                hintText: 'Full Name',
                icon: Icons.person,
              ),
              const SizedBox(height: 12),
              const CustomTextInput(
                hintText: 'Email',
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 12),
              CustomTextInput(
                hintText: 'Password',
                icon: Icons.lock,
                isSecureText: _isPasswordVisible,
                suffixWidget: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    child: Icon(_isPasswordVisible ? Icons.visibility_off : Icons.visibility)),
              ),
              const SizedBox(height: 12),
              CustomTextInput(
                hintText: 'Confirm Password',
                icon: Icons.lock,
                isSecureText: _isConfirmPasswordVisible,
                suffixWidget: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                      });
                    },
                    child: Icon(_isConfirmPasswordVisible ? Icons.visibility_off : Icons.visibility)),
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                title: "Sign Up",
                onPressed: () {
                  Get.to(() => HomeScreen());
                },
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Get.offAll(() => const LoginScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.primaryWhite.withOpacity(0.9),
                      ),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
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
