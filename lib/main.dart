import 'package:e_commerce_app/features/auth/pages/login/login_view.dart';
import 'package:e_commerce_app/features/splash/presentaiosn/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: LoginView(),
    );
  }
}
