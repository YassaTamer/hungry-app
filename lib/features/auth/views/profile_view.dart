import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/widgets/custom_user_text_field.dart';
import 'package:hungry/root.dart';
import 'package:hungry/shared/custom_text.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  final TextEditingController _name = TextEditingController();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _address = TextEditingController();

  @override
  void initState() {
    _name.text = 'Yassa';
    _email.text = 'Yassa@gmail.com';
    _address.text = '44  sohag , egypt';
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/icons/settings.svg'),
          ),
        ],
        backgroundColor: AppColors.primary,
        leading: GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => Root()),
          ),
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.vmoycMUOmbcs0Vw-1iIdVAHaHa?w=186&h=186&c=7&r=0&o=7&dpr=1.4&pid=1.7&rm=3',
                    ),
                  ),
                  border: Border.all(width: 5, color: Colors.white),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            Gap(32),
            CustomUserTextField(controller: _name, lable: 'Name'),
            Gap(24),
            CustomUserTextField(controller: _address, lable: 'Address'),
            Gap(24),
            CustomUserTextField(controller: _email, lable: 'Email'),
            Gap(12),
            Divider(),
            Gap(12),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
              leading: Image.asset('assets/icons/visa2.png', width: 48),
              title: CustomText(
                text: 'Debit Cart',
                color: Colors.black,
                size: 18,
              ),
              subtitle: CustomText(
                text: '**** **** **** 5630',
                color: Colors.grey,
                size: 18,
              ),
              tileColor: Color(0xffF3F4F6),
              trailing: CustomText(
                text: 'Defult',
                weight: FontWeight.bold,
                size: 14,
              ),
            ),
          ],
        ),
      ),

      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            // Edit Profile Button
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Edit profile action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(8),
                    Icon(Icons.edit, color: Colors.white),
                  ],
                ),
              ),
            ),

            const Gap(16),

            // Logout Button
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  // TODO: Logout action
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: AppColors.primary),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Log out',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(8),
                    Icon(Icons.logout, color: AppColors.primary),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
