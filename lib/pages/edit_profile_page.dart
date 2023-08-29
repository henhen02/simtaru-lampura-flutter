import 'package:flutter/material.dart';
import 'package:flutter_map_simtaru/components/custom_safe_area.dart';
import 'package:flutter_map_simtaru/constants/colors.dart';
import 'package:flutter_map_simtaru/forms/edit_profile_form.dart';
import 'package:go_router/go_router.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                color: AppColors.bgColor,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.blackColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "Edit Profil",
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const EditProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
