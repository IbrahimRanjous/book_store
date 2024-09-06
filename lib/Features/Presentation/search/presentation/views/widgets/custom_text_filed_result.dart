import 'package:flutter/material.dart';
import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../../../core/utils/styles.dart';

class CustomTextFiledResult extends StatelessWidget {
  const CustomTextFiledResult({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.onChanged,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textBox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            (Icons.search),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          hintText: hintText,
          labelStyle: Styles.TextStyle15,
        ),
      ),
    );
  }
}
