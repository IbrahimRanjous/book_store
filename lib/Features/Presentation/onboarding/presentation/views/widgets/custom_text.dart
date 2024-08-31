import 'package:flutter/material.dart';

class customText extends StatelessWidget {
  const customText({
    super.key, required this.text, required this.textStyle,
  });
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: textStyle
    );
  }
}
