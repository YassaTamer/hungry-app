import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/views/signup_view.dart';
import 'package:hungry/features/auth/widgets/custom_btn.dart';
import 'package:hungry/root.dart';
import 'package:hungry/shared/custom_text.dart';
import 'package:hungry/shared/custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Gap(100),
                  SvgPicture.asset('assets/logo/Hungry_.svg'),
                  Gap(10),
                  CustomText(
                    text: 'Welcome back, discover the fast food  ',
                    color: Colors.white,
                    weight: FontWeight.w500,
                    size: 14,
                  ),
                  Gap(64),
                  CustomTextfield(
                    controller: emailController,
                    hint: 'Email Address',
                    isPassword: false,
                  ),
                  Gap(20),
                  CustomTextfield(
                    hint: 'Password',
                    isPassword: true,
                    controller: passwordController,
                  ),
                  Gap(25),
                  CustomAuthBtn(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        // print('success login');
                      }
                    },
                    text: 'Login',
                  ),
                  Gap(20),
                  CustomAuthBtn(
                    color: Colors.transparent,
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => SignupView()),
                      );
                    },
                    text: 'Go to sign up',
                  ),

                  Gap(20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => Root()),
                      );
                    },
                    child: CustomText(
                      text: 'Register as a gust!',
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
