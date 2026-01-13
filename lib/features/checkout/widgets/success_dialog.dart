import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_button.dart';
import 'package:hungry/shared/custom_text.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade900,
              offset: Offset(0, 0),
              blurRadius: 15,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.primary,
              child: Icon(Icons.check, color: Colors.white, size: 38),
            ),
            Gap(10),
            CustomText(
              text: 'Success',
              color: AppColors.primary,
              size: 20,
              weight: FontWeight.bold,
            ),
            Gap(10),
            CustomText(
              color: Colors.grey.shade600,
              text:
                  'Your payment was successful.\nA receipt for this purchase has\n been sent to your email.',
            ),
            Gap(10),
            CustomButton(
              text: 'Close',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
