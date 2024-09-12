import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../sign in/up/presentation/views/widgets/custom_drop_down_button.dart';
import 'build_phone_botton_orientation.dart';
import 'build_slider_with_icons.dart';

class ShowModalBottomSheetBody extends StatefulWidget {
  final bool isDark;
  final double fontSize;
  final ValueChanged<double> onChangedBritness;
  final ValueChanged<double> onChangedFontSize;
  final double brightness;

  const ShowModalBottomSheetBody({
    super.key,
    required this.isDark,
    required this.fontSize,
    required this.onChangedBritness,
    required this.onChangedFontSize,
    required this.brightness,
  });

  @override
  State<ShowModalBottomSheetBody> createState() =>
      _ShowModalBottomSheetBodyState();
}

class _ShowModalBottomSheetBodyState extends State<ShowModalBottomSheetBody> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: orientation == Orientation.portrait ? 25 : 60),
        decoration: BoxDecoration(
          color: widget.isDark
              ? const Color.fromARGB(255, 46, 45, 45)
              : Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(
                    Icons.close,
                    color: widget.isDark ? Colors.white : TColor.text,
                    size: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            BuildSlider(
              prefixIcon: Icons.text_decrease,
              suffixIcon: Icons.text_increase,
              sliderValue: widget.fontSize,
              onValueChanged: widget.onChangedFontSize,
              isDark: widget.isDark,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomDropDownButton(
              hint: 'Font',
              itemsList: ['Font1', 'Font2'],
            ),
            const SizedBox(
              height: 15,
            ),
            BuildSlider(
              prefixIcon: Icons.light_mode_outlined,
              suffixIcon: Icons.light_mode,
              sliderValue: widget.brightness,
              onValueChanged: widget.onChangedBritness,
              isDark: widget.isDark,
            ),
            const BuildPhoneBottonOrientation(),
          ],
        ),
      ),
    );
  }
}
