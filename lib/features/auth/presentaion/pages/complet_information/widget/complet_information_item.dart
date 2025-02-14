import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CompletInformationItem extends StatelessWidget {
  const CompletInformationItem(
      {super.key, required this.text, this.inputType, this.maxLines});
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 1.5625,
            color: Color(0xff0c0b0b),
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          // textAlign: TextAlign.center,
        ),
        Gap(10),
        CustomTextFormField(
          maxLines: maxLines,
          inputType: inputType,
        )
      ],
    );
  }
}
