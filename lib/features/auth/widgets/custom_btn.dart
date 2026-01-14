import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class CustomAuthBtn extends StatelessWidget {
  const CustomAuthBtn({super.key, this.onTap, required this.text, this.color, this.textColor});
  final Function()? onTap;
  final String text;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 56,
        child: Center(
          child: CustomText(
            text: text,
            weight: FontWeight.w500,
            size: 18,
            color:textColor?? AppColors.primary,
          ),
        ),
      ),
    );
  }
}
