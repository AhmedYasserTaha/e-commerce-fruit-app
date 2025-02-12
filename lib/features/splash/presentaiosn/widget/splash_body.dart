import 'package:e_commerce_app/features/onBording/presentaiosn/on_bording_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadingAnimation;
// هنا عملنا الانميشن بتاع النص
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController);
    animationController.repeat(reverse: true);

    goToNextScreen();
  }

// هنا استخدمنا  dispose عشان الانميشن ميفضلش شغال على الفاضي
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textSize = size.width * 0.12; // حجم النص يكون 12% من عرض الشاشة

    return Column(
      children: [
        Spacer(),
        Expanded(
          // ده بيخلي النص في منتصف الشاشة بالضبط
          child: Center(
            child: AnimatedBuilder(
              animation: fadingAnimation,
              builder: (context, child) => Opacity(
                opacity: fadingAnimation.value,
                child: Text(
                  "Fruit Market",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: textSize,
                    fontFamily: "Poppins",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),

        // الصورة بتكون تحت وتاخد عرض الشاشة بالكامل
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            "assets/images/splash_view_image.png",
            fit: BoxFit.cover, // عشان تملأ العرض بالكامل
          ),
        ),
      ],
    );
  }

  void goToNextScreen() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Get.to(() => OnBordingScreen(), transition: Transition.fade);
      },
    );
  }
}
