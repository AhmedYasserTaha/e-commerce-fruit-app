import 'package:e_commerce_app/features/onBording/presentaiosn/widget/page_view_item.dart';
import 'package:flutter/material.dart';

class CoustomPageView extends StatelessWidget {
  const CoustomPageView({super.key, required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            title: "E Shopping",
            suptitle: "Explore top organic fruits & grab then",
            image: "assets/images/onboarding1.png"),
        PageViewItem(
            title: "Delivery in the way",
            suptitle: "Get your order by speed delivery",
            image: "assets/images/onboarding2.png"),
        PageViewItem(
            title: "Delivery Arrived",
            suptitle: "Order is arrived at your place",
            image: "assets/images/onboarding3.png"),
      ],
    );
  }
}
