import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookCardInfo extends StatelessWidget {
  const BookCardInfo({super.key, required this.recentlyArr});

  final Map recentlyArr;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        decoration: BoxDecoration(
          color: Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(35),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        width: constraints.maxWidth * 3,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A must read for everybody. This book taught me so many things about...',
                    style: Styles.TextStyle12,
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Read more >',
                    style: Styles.TextStyle12.copyWith(color: TColor.subTitle),
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RatingBarIndicator(
                    rating: recentlyArr['rating'] ?? 0.0,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: TColor.primary,
                    ),
                    itemCount: 5,
                    itemSize: 15,
                    direction: Axis.horizontal,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                recentlyArr['image']?.toString() ?? '',
                fit: BoxFit.cover,
                width: constraints.maxWidth * 0.2,
                height: constraints.maxWidth * 0.35,
              ),
            ),
          ],
        ),
      );
    });
  }
}
