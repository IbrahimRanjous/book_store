import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RecentlyViewedItem extends StatelessWidget {
  const RecentlyViewedItem({super.key, required this.itemsObj});

  final Map<String, dynamic> itemsObj;
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: mediaQuery.width * .36,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              itemsObj['image']?.toString() ?? '',
              fit: BoxFit.cover,
              width: mediaQuery.width * 0.5,
              height: mediaQuery.width * 0.6,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              itemsObj['name']?.toString() ?? '',
              textAlign: TextAlign.center,
              style: Styles.TextStyle15.copyWith(color: TColor.text),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              itemsObj['author']?.toString() ?? '',
              textAlign: TextAlign.center,
              style: Styles.TextStyle12.copyWith(color: TColor.subTitle),
            ),
          ),
        ],
      ),
    );
  }
}
