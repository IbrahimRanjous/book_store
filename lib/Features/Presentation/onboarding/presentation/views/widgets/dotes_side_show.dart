import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';

class dotsSideShow extends StatelessWidget {
  const dotsSideShow({
    super.key,
    required this.pageArr,
    required this.page,
    required this.mediaQuery,
  });

  final List pageArr;
  final int page;
  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: pageArr.map((pObJ) {
        var index = pageArr.indexOf(pObJ);
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: page == index ? TColor.primary : TColor.primaryLight,
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }).toList(),
    );
  }
}
