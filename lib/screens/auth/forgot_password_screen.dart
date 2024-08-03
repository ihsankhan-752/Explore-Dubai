import 'package:explore_dubai/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../widgets/buttons.dart';
import '../../widgets/logo_widget.dart';
import '../../widgets/text_inputs.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();
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
              CustomTextInput(
                controller: emailController,
                hintText: 'Email',
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                title: "Reset",
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return SimpleDialog(
                          title: const Icon(
                            Icons.email_outlined,
                            size: 40,
                          ),
                          children: [
                            Center(
                              child: Text(
                                "Reset Link sent to ${emailController.text}",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Please reset your password and login again with new password",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: AppColors.primaryBlack,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                              child: PrimaryButton(
                                title: "Back",
                                onPressed: () {
                                  Get.offAll(() => const LoginScreen());
                                },
                              ),
                            )
                          ],
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
