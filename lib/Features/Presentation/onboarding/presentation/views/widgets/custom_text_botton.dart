import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      splashColor: TColor.primary,
      onTap: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: TColor.primary, fontWeight: FontWeight.w700, fontSize: 17),
      ),
    );
  }
}
