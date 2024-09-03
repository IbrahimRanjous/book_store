import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';

class buildAlign extends StatelessWidget {
  const buildAlign({
    super.key,
    required this.mediaQuery,
  });

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Transform.scale(
        scale: 1.4,
        origin: Offset(0, mediaQuery.width * 1.03),
        child: Container(
          width: mediaQuery.width,
          height: mediaQuery.width,
          decoration: BoxDecoration(
            color: TColor.primary,
            borderRadius: BorderRadius.circular(mediaQuery.width * 0.5),
          ),
        ),
      ),
    );
  }
}
