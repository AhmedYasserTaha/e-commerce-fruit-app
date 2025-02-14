import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/size_config.dart';
import 'package:e_commerce_app/core/widgets/custom_widget_botton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          // Gap(MediaQuery.of(context).size.height*.1)
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
              // fontFamily: "Poppins",
              // color: const Color.fromARGB(255, 0, 0, 0),
              color: AppColors.pColor,
            ),
          ),
          Spacer(),
          Row(
            children: [
              // حطينا هنا flexbleعشان تاخد عرض الاسكرين كلها
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                      text: "Login with",
                      onTap: () {},
                      iconData: Icons.facebook,
                      color: const Color.fromARGB(255, 54, 57, 244)),
                ),
              ),
              // حطينا هنا flexbleعشان تاخد عرض الاسكرين كلها  بحيث تكون مساحه الازررا قد بعض
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                      text: "Login with",
                      onTap: () {},
                      iconData: Icons.facebook,
                      color: const Color.fromARGB(255, 54, 57, 244)),
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
