import 'package:flutter/material.dart';

class TColor {
  static Color get primary => const Color(0xff5ABD8C);
  static Color get primaryLight => const Color(0xffAFDFC7);
  static Color get text => const Color(0xff212121);
  static Color get subTitle => const Color(0xff212121).withOpacity(0.4);
  static Color get textBox => const Color(0xffEFEFEF).withOpacity(0.8);
  static Color get sideMenu => const Color(0xffF3F3F3);
  static List<Color> get button => const [
        Color(0xff5ABD8c),
        Color(0xff00FF81),
      ];
  static List<Color> get genresColors => const [
        Color(0xff1C4A7E),
        Color(0xffC65135),
      ];
}
