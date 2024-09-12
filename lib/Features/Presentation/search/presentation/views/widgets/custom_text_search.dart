import 'package:flutter/material.dart';
import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../../../core/utils/styles.dart';

class CustomTextSearch extends StatelessWidget {
  const CustomTextSearch({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.onChanged,
    this.onSearch,
    this.onSubmitted,
    this.onTap,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final void Function(String)? onChanged;
  final void Function()? onSearch;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textBox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        onTap: onTap,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: onSearch,
            icon: const Icon(Icons.search),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune),
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
