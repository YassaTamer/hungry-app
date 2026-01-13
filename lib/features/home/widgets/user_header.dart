import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/logo/Hungry_.svg',
              color: AppColors.primary,
              height: 32,
            ),
            Gap(6),
            CustomText(
              text: 'Hello Abo Youssef',
              size: 16,
              weight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          child: Icon(CupertinoIcons.person, color: Colors.white),
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}
