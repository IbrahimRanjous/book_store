import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';

class customMaterialButton extends StatelessWidget {
  const customMaterialButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      minWidth: double.maxFinite,
      color: TColor.primary,
      textColor: Colors.white,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
      ),
    );
  }
}
