import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/checkout/widgets/order_details_widget.dart';
import 'package:hungry/features/checkout/widgets/success_dialog.dart';
import 'package:hungry/shared/custom_button.dart';
import 'package:hungry/shared/custom_text.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  String selectedMethod = 'Cash';
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
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Orders Summery',
                size: 20,
                weight: FontWeight.w500,
              ),
              Gap(12),
              OrderDetailsWidget(
                order: '12',
                fees: '2.3',
                taxes: '4.5',
                total: '122',
              ),
              Gap(32),
              CustomText(
                text: 'Orders Summery',
                size: 20,
                weight: FontWeight.w500,
              ),
              Gap(20),
              ListTile(
                onTap: () => setState(() => selectedMethod = 'Cash'),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
                leading: Image.asset('assets/icons/cash.png', width: 48),
                title: CustomText(
                  text: 'Cash on delivery',
                  color: Colors.white,
                  size: 18,
                ),
                tileColor: Color(0xff3C2F2F),
                trailing: Radio<String>(
                  activeColor: Colors.white,
                  value: 'Cash',
                  groupValue: selectedMethod,
                  onChanged: (value) => setState(() => selectedMethod = value!),
                ),
              ),
              Gap(12),
              ListTile(
                onTap: () => setState(() => selectedMethod = 'Visa'),

                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
                leading: Image.asset('assets/icons/visa.png', width: 48),
                title: CustomText(
                  text: 'Debit Cart',
                  color: Colors.white,
                  size: 18,
                ),
                subtitle: CustomText(
                  text: '**** **** **** 5630',
                  color: Colors.white,
                  size: 18,
                ),
                tileColor: Colors.blue.shade900,
                trailing: Radio<String>(
                  activeColor: Colors.white,
                  value: 'Visa',
                  groupValue: selectedMethod,
                  onChanged: (value) => setState(() => selectedMethod = value!),
                ),
              ),
              Gap(8),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  CustomText(text: 'Save cart details for future payment'),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomSheet: Container(
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
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Total', size: 22),
                  CustomText(text: '\$18.8', size: 28),
                ],
              ),
              CustomButton(
                text: 'Pay Now',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (v) {
                      return SuccessDialog();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
