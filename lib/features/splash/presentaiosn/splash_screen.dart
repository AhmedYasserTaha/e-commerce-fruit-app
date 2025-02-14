import 'package:e_commerce_app/features/splash/presentaiosn/widget/splash_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.pColor,
      backgroundColor: Colors.white,
      body: SplashBody(),
    );
  }
}
