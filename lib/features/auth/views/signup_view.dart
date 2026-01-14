import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/views/login_view.dart';
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
      //  backgroundColor: AppColors.primary,
      body: Center(
        child: Form(
          child: Column(
            children: [
              Gap(100),
              SvgPicture.asset(
                'assets/logo/Hungry_.svg',
                color: AppColors.primary,
              ),
              Gap(64),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Column(
                    children: [
                      Gap(30),
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
                        isPassword: true,
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
                      Gap(30),
                      CustomAuthBtn(
                        color: Colors.transparent,
                        textColor: Colors.white,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) => LoginView()),
                          );
                        },
                        text: 'Go to login',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
