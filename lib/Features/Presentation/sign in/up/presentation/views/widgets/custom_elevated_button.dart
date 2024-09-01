import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.onPressed, required this.title});

  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: getColor(Colors.white, TColor.primary),
        foregroundColor: getColor(TColor.primary, Colors.white),
        shadowColor:
            WidgetStateProperty.resolveWith((states) => TColor.primary),
        minimumSize: WidgetStateProperty.resolveWith(
            (states) => const Size(double.maxFinite, 56)),
        shape: WidgetStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              width: 1,
              color: states.contains(WidgetState.pressed)
                  ? Colors.transparent
                  : TColor.primary,
            ),
          ),
        ),
        elevation: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.pressed) ? 1 : 0),
      ),
      child: Text(
        title,
        style: TextStyle(
            color: TColor.primary, fontWeight: FontWeight.w700, fontSize: 17),
      ),
    );
  }

  WidgetStateProperty<Color>? getColor(Color color, Color colorPressed) {
    return WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.pressed) ? colorPressed : color);
  }
}
