import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.title,
      required this.suptitle,
      required this.image});
  final String? title;
  final String? suptitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.defaultSize! * 22,
        ),
        Image.asset(image!),
        Text(
          title!,
          style: TextStyle(
              fontSize: 20,
              color: AppColors.titleColor,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        Text(
          suptitle!,
          style: TextStyle(
              fontSize: 16,
              color: AppColors.supTitleColor,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
