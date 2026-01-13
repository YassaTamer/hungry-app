import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/widgets/custom_btn.dart';
import 'package:hungry/shared/custom_textfield.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController confirmController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            child: Column(
              children: [
                Gap(100),
                SvgPicture.asset('assets/logo/Hungry_.svg'),
                Gap(64),
                CustomTextfield(
                  controller: nameController,
                  hint: 'Name ',
                  isPassword: false,
                ),
                Gap(15),
                CustomTextfield(
                  controller: emailController,
                  hint: 'Email Address',
                  isPassword: false,
                ),
                Gap(15),
                CustomTextfield(
                  controller: passwordController,
                  hint: 'Password',
                  isPassword: false,
                ),
                Gap(15),
                CustomTextfield(
                  controller: confirmController,
                  hint: 'Confirm Password',
                  isPassword: false,
                ),
                Gap(32),
                CustomAuthBtn(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                     // print('success register');
                    }
                  },
                  text: 'Sign Up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
