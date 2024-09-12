import 'package:flutter/material.dart';

import 'custom_slider.dart';

class BuildSlider extends StatelessWidget {
  const BuildSlider({
    super.key,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.sliderValue,
    required this.onValueChanged,
    required this.isDark,
  });
  final bool isDark;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final double sliderValue;
  final ValueChanged<double> onValueChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          prefixIcon,
          size: 22,
          color: isDark ? Colors.white : Colors.black,
        ),
        CustomSlider(
          isDark: isDark,
          sliderValue: sliderValue,
          onValueChanged: onValueChanged,
        ),
        Icon(
          suffixIcon,
          size: 32,
          color: isDark ? Colors.white : Colors.black,
        ),
      ],
    );
  }
}
