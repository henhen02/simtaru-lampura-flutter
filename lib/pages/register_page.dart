import 'package:flutter/material.dart';
import 'package:flutter_map_simtaru/components/textfield_common.dart';
import 'package:flutter_map_simtaru/components/textfield_password.dart';
import 'package:flutter_map_simtaru/constants/image.dart';
import 'package:flutter_map_simtaru/styles/styles.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
                child: SizedBox(
              height: 100,
            )),
            Image.asset(Images.logo),
            const SizedBox(height: 20),
            const Text(
              "Daftar",
              style: AppStyles.title,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const TextFiledCommon(
                    labelText: "NIK",
                  ),
                  const SizedBox(height: 10),
                  const TextFiledCommon(
                    labelText: "Nama Lengkap",
                  ),
                  const SizedBox(height: 10),
                  const TextFiledCommon(
                    labelText: "Email",
                  ),
                  const SizedBox(height: 10),
                  const TextFieldPassword(),
                  const SizedBox(height: 10),
                  const TextFieldPassword(),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Daftar", style: AppStyles.textButton),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Sudah punya akun? ",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            context.go('/');
                          },
                          style: AppStyles.textButtonStyle,
                          child: const Text(
                            "Masuk",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          )),
                    ],
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
