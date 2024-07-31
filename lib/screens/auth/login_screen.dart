import 'package:explore_dubai/widgets/buttons.dart';
import 'package:explore_dubai/widgets/logo_widget.dart';
import 'package:explore_dubai/widgets/text_inputs.dart';
import 'package:flutter/material.dart';
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
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryWhite,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const CustomTextInput(
                hintText: 'Email',
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: AppColors.primaryWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const PrimaryButton(title: "Login"),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryWhite.withOpacity(0.9),
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.primaryWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
