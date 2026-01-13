import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/product/widgets/spicy_slider.dart';
import 'package:hungry/features/product/widgets/topping_card.dart';
import 'package:hungry/shared/custom_button.dart';
import 'package:hungry/shared/custom_text.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpicySlider(
                value: value,
                onChanged: (double v) {
                  setState(() {
                    value = v;
                  });
                },
              ),
              Gap(24),
              CustomText(text: 'Toppings', size: 20, weight: FontWeight.w600),
              Gap(12),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ToppingCard(
                        imageUrl: 'assets/details/tomato.png',
                        title: "tomato",
                        onAdd: () {},
                        color: Color(0xff3C2F2F),
                      ),
                    );
                  }),
                ),
              ),
              Gap(24),
              CustomText(
                text: 'Side Option',
                size: 20,
                weight: FontWeight.w600,
              ),
              Gap(12),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ToppingCard(
                        imageUrl: 'assets/details/tomato.png',
                        title: "tomato",
                        onAdd: () {},
                        color: Color(0xff3C2F2F),
                      ),
                    );
                  }),
                ),
              ),
              Gap(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Total', size: 22),
                      CustomText(text: '\$18.8', size: 28),
                    ],
                  ),
                  CustomButton(text: 'Add To Card'),
                ],
              ),
              Gap(48),
            ],
          ),
        ),
      ),
    );
  }
}
