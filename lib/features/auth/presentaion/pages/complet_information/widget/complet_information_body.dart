import 'package:e_commerce_app/core/widgets/custom_widget_botton.dart';
import 'package:e_commerce_app/features/auth/presentaion/pages/complet_information/widget/complet_information_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CompletInformationBody extends StatelessWidget {
  const CompletInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(MediaQuery.of(context).size.height * .15),
          CompletInformationItem(text: "Enter your name"),
          Gap(MediaQuery.of(context).size.height * .03),
          CompletInformationItem(text: "Enter your phone number"),
          Gap(MediaQuery.of(context).size.height * .03),
          CompletInformationItem(
            text: "Enter your address",
            maxLines: 4,
          ),
          Gap(MediaQuery.of(context).size.height * .05),
          CustomGeneralButton(text: 'Login', onTap: () {}),
        ],
      ),
    );
  }
}
