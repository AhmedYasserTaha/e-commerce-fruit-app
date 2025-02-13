import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomWidgetButton extends StatelessWidget {
  const CustomWidgetButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
          color: AppColors.pColor, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(fontSize: 16, color: Colors.white),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
