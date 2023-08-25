import 'package:flutter/material.dart';

import 'styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        required this.backgroundColor,
        required this.textColor,
        this.borderRadius,
        required this.text, required this.onPressed});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: borderRadius ?? BorderRadius.circular(12))),
            onPressed: onPressed,
            child: Text(
              text,
              style: Styles.textStyle18.copyWith(color: textColor),
            )),
      ),
    );
  }
}