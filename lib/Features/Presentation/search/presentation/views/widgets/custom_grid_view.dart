import 'package:flutter/material.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import 'grid_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.mediaQuery,
    required this.gridItemArr,
  });

  final Size mediaQuery;
  final List gridItemArr;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaQuery.height,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.75,
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: gridItemArr.length,
        itemBuilder: (context, index) {
          Color color = TColor.gridColors[index % TColor.gridColors.length];
          return GridItem(
            itemColor: color,
            itemsObj: gridItemArr[index],
          );
        },
      ),
    );
  }
}
