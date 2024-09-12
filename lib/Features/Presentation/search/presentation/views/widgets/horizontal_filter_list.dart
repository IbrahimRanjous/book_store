import 'package:flutter/material.dart';

import 'clickable_item.dart';

class HorizontalFilterList extends StatelessWidget {
  const HorizontalFilterList({
    super.key,
    required this.filterArr,
    required this.selectMenu,
    required this.onItemTap,
  });
  final List filterArr;
  final int selectMenu;
  final Function(int index) onItemTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Row(
          children: filterArr.map((tag) {
            var index = filterArr.indexOf(tag);
            return ClickableItem(
              name: tag['name'].toString(),
              isSelected: index == selectMenu,
              onTap: () => onItemTap(index),
            );
          }).toList(),
        ),
      ),
    );
  }
}
