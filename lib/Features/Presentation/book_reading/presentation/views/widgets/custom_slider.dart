import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
    required this.sliderValue,
    required this.onValueChanged,
    required this.isDark,
  });
  final bool isDark;

  final double sliderValue;
  final ValueChanged<double> onValueChanged;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late double _currentliderValue;

  @override
  void initState() {
    super.initState();
    _currentliderValue = widget.sliderValue;
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Slider(
        activeColor: widget.isDark ? Colors.white : TColor.text,
        thumbColor: Colors.grey,
        inactiveColor: widget.isDark ? Colors.white : TColor.subTitle,
        max: 100.0,
        min: 0.0,
        divisions: 10,
        label: _currentliderValue.round().toString(),
        value: _currentliderValue,
        onChanged: (double value) {
          setState(() {
            _currentliderValue = value;
          });
          widget.onValueChanged(value);
        },
      ),
    );
  }
}
