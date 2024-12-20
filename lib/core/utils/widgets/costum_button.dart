import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';

class CostumButton extends StatelessWidget {
  const CostumButton({super.key, this.onPressed, required this.text});

  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColor.kPrimaryColor),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle18Bold.copyWith(color: kWhiteStyle),
          ),
        ),
      ),
    );
  }
}
