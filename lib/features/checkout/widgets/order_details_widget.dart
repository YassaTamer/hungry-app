import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/custom_text.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    super.key,
    required this.order,
    required this.fees,
    required this.taxes,
    required this.total,
  });
  final String order, fees, taxes, total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkoutWidget('Order', order, false, false),
        Gap(8),
        checkoutWidget('Taxes', taxes, false, false),
        Gap(8),
        checkoutWidget('Delivery fees', fees, false, false),
        Gap(8),
        Divider(),
        Gap(8),
        checkoutWidget('Tatal : ', total, true, false),
        Gap(8),
        checkoutWidget('Estimated delivery time : ', '15 - 30 min', true, true),
      ],
    );
  }
}

Widget checkoutWidget(title, price, isBold, isSmall) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(
        text: title,
        size: isSmall ? 12 : 16,
        weight: isBold ? FontWeight.bold : FontWeight.w400,
        color: isBold ? Colors.black : Colors.grey.shade600,
      ),
      CustomText(
        text: '$price \$',
        size: isSmall ? 12 : 16,
        weight: isBold ? FontWeight.bold : FontWeight.w400,
        color: isBold ? Colors.black : Colors.grey.shade600,
      ),
    ],
  );
}
