import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class SpicySlider extends StatefulWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged});
  final double value;
  final ValueChanged<double> onChanged;

  @override
  State<SpicySlider> createState() => _SpicySliderState();
}

class _SpicySliderState extends State<SpicySlider> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/details/sandwich_details.png', height: 256),
        Spacer(),
        Column(
          children: [
            CustomText(
              text:
                  'Customize Your Burger \n to Your Tastes. \n Ultimate Experience',
            ),
            Slider(
              activeColor: AppColors.primary,
              inactiveColor: Colors.grey.shade400,
              max: 1,
              min: 0,
              value: widget.value,
              onChanged: widget.onChanged,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomText(text: '🥶'),
                Gap(100),
                CustomText(text: '🌶️'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
