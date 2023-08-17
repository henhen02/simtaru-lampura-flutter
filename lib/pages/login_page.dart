import 'package:flutter/material.dart';
import 'package:flutter_map_simtaru/components/textfield_common.dart';
import 'package:flutter_map_simtaru/components/textfield_password.dart';
import 'package:flutter_map_simtaru/constants/image.dart';
import 'package:flutter_map_simtaru/styles/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
                child: SizedBox(
              height: 100,
            )),
            Image.asset(Images.logo),
            const SizedBox(height: 50),
            const Text(
              "Masuk",
              style: AppStyles.title,
            ),
            const Text(
              "Masukan NIP dan Password untuk melanjutkan",
              style: AppStyles.subtitle,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const TextFiledCommon(),
                  const SizedBox(height: 10),
                  const TextFieldPassword(),
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Lupa Password?",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.right,
                        )),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Masuk", style: AppStyles.textButton),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
