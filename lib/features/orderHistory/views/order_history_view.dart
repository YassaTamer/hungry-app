import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/custom_button.dart';
import 'package:hungry/shared/custom_text.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView.builder(
          itemCount: 3,
          padding: const EdgeInsets.only(bottom: 140, top: 20),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/test/test.png', width: 100),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Hamburger',
                              weight: FontWeight.bold,
                              size: 16,
                            ),
                            CustomText(text: 'Quantities : 3'),
                            CustomText(text: 'price : 21\$'),
                          ],
                        ),
                      ],
                    ),
                    Gap(12),
                    CustomButton(
                      text: 'Order Again',
                      width: double.infinity,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
