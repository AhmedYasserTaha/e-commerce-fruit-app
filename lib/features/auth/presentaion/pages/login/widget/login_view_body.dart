import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/size_config.dart';
import 'package:e_commerce_app/core/widgets/custom_widget_botton.dart';
import 'package:e_commerce_app/features/auth/data/respotries/auth_repo_impl.dart';
import 'package:e_commerce_app/features/auth/presentaion/pages/complet_information/complet_information_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepo = AuthRepoImpl(); // كود تسجيل الدخول
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          SizedBox(
            height: SizeConfig.defaultSize * 20,
            child: Image.asset("assets/images/logo.png"),
          ),
          Gap(20),
          Text(
            "Fruit Market",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: AppColors.pColor,
            ),
          ),
          Spacer(),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    text: "Login with",
                    onTap: () async {
                      try {
                        final userCredential =
                            await authRepo.loginWitFacebook();
                        if (userCredential != null) {
                          Get.to(() => CompletInformationView());
                        }
                      } catch (e) {
                        print("Facebook Login Error: $e");
                      }
                    },
                    iconData: FontAwesome.facebook,
                    color: const Color.fromARGB(255, 54, 57, 244),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    text: "Login with",
                    onTap: () async {
                      try {
                        final result = await authRepo.loginWithGoogel();
                        result.fold(
                          (error) => print("Google Login Error: $error"),
                          (userCredential) =>
                              Get.to(() => CompletInformationView()),
                        );
                      } catch (e) {
                        print("Google Login Exception: $e");
                      }
                    },
                    iconData: FontAwesome.google,
                    color: const Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
              )
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
