import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class GenresItem extends StatelessWidget {
  const GenresItem(
      {super.key, required this.itemsObj, required this.itemColor});

  final Map itemsObj;
  final Color itemColor;
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width * .7,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: itemColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              itemsObj['image'],
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
              width: mediaQuery.width * .6,
              height: mediaQuery.width * .4,
            ),
          ),
          Text(
            itemsObj['name'],
            style: Styles.TextStyle15.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
