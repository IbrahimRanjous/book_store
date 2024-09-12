// ignore_for_file: non_constant_identifier_names

import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle11 = TextStyle(
    fontSize: 11,
    fontFamily: kSFProText,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle12 = TextStyle(
    fontSize: 12,
    fontFamily: kSFProText,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle15 = TextStyle(
    fontSize: 15,
    fontFamily: kSFProText,
    fontWeight: FontWeight.normal,
  );

  static TextStyle TextStyle20 = TextStyle(
    fontSize: 20,
    fontFamily: kSFProText,
    fontWeight: FontWeight.w600,
    color: TColor.text,
  );

  static const TextStyle24 = TextStyle(
    fontSize: 24,
    fontFamily: kSFProText,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
}
