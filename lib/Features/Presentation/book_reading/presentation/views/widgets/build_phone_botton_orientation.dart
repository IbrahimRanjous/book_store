import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../core/utils/color_extenstion.dart';

class BuildPhoneBottonOrientation extends StatelessWidget {
  const BuildPhoneBottonOrientation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitDown,
              DeviceOrientation.portraitUp,
            ]);
          },
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: orientation == Orientation.portrait
                  ? TColor.subTitle
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.stay_current_portrait,
              color: orientation == Orientation.portrait
                  ? TColor.primary
                  : TColor.text,
              size: 32,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        IconButton(
          onPressed: () {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.landscapeLeft,
              DeviceOrientation.landscapeRight,
            ]);
          },
          icon: Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: orientation == Orientation.landscape
                  ? TColor.subTitle
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.stay_current_landscape,
              color: orientation == Orientation.landscape
                  ? TColor.primary
                  : TColor.text,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}
