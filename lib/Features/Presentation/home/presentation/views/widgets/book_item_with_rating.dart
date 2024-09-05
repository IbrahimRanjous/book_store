import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookItemWithRating extends StatelessWidget {
  const BookItemWithRating({
    super.key,
    required this.itemsObj,
  });

  final Map<String, dynamic> itemsObj;

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: mediaQuery.width * .36,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              itemsObj['image']?.toString() ?? '',
              fit: BoxFit.cover,
              width: mediaQuery.width * .5,
              height: mediaQuery.width * .6,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              itemsObj['name']?.toString() ?? '',
              textAlign: TextAlign.start,
              style: Styles.TextStyle15.copyWith(color: TColor.text),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              itemsObj['author']?.toString() ?? '',
              textAlign: TextAlign.start,
              style: Styles.TextStyle12.copyWith(color: TColor.subTitle),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: RatingBarIndicator(
              rating: itemsObj['rating'] ?? 0.0,
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: TColor.primary,
              ),
              itemCount: 5,
              itemSize: 15,
              direction: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
