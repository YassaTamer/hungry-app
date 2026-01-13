import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/custom_text.dart';

class ToppingCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onAdd;
  final Color color;

  const ToppingCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onAdd,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onAdd,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 120,
              color: color,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                children: [
                  Image.asset(
                    imageUrl,
                    fit: BoxFit.contain,
                    width: 80,
                    height: 50,
                  ),

                  Gap(10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: title,
                        color: Colors.white,
                        size: 15,
                        weight: FontWeight.w600,
                      ),
                      GestureDetector(
                        onTap: onAdd,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.red,
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  Gap(5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
