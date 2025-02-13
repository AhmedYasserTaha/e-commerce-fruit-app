import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/size_config.dart';
import 'package:e_commerce_app/core/widgets/custom_widget_botton.dart';
import 'package:e_commerce_app/features/onBording/presentaiosn/widget/coustom_page_view.dart';
import 'package:flutter/material.dart';

class OnBordingBody extends StatelessWidget {
  const OnBordingBody({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ تأكد من تهيئة SizeConfig قبل الاستخدام
    SizeConfig().init(context);

    return Stack(
      children: [
        CoustomPageView(),
        Positioned(
          top: MediaQuery.of(context).size.height * .1,
          right: 32,
          child: Text(
            "Skip",
            style: TextStyle(fontSize: 16, color: AppColors.textColor),
          ),
        ),
        Positioned(
          left: (SizeConfig.defaultSize ?? 10) * 10, // ✅ تصحيح هنا
          right: (SizeConfig.defaultSize ?? 10) * 10, // ✅ تصحيح هنا
          bottom: (SizeConfig.defaultSize ?? 10) * 10, // ✅ تصحيح هنا
          child: CustomWidgetButton(
            text: "Next",
          ),
        ),
      ],
    );
  }
}
