import 'package:explore_dubai/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final IconData icon;
  final Widget? suffixWidget;
  final bool? isSecureText;
  const CustomTextInput(
      {super.key, this.controller, required this.hintText, required this.icon, this.suffixWidget, this.isSecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      obscureText: isSecureText ?? false,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: AppColors.primaryGrey,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.primaryBlack.withOpacity(0.8),
        ),
        suffixIcon: suffixWidget ?? const SizedBox(),
        prefixIcon: Icon(
          icon,
          size: 25,
          color: AppColors.primaryBlack.withOpacity(0.8),
        ),
      ),
    );
  }
}
