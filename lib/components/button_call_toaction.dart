import 'package:flutter/material.dart';
import 'package:flutter_map_simtaru/constants/colors.dart';
import 'package:go_router/go_router.dart';

class ButtonCallToAction extends StatelessWidget {
  const ButtonCallToAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Material(
        child: InkWell(
          onTap: () => {
            Future.delayed(const Duration(milliseconds: 300), () {
              context.push('/pengajuan');
            }),
          },
          child: Ink(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(7),
            ),
            padding: const EdgeInsets.all(20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pengajuan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Buat pengajuan baru",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_right_alt,
                  size: 40,
                  color: AppColors.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
