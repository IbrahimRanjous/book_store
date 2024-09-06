import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'recently_viewed_item.dart';

class RecentlyViewedBody extends StatefulWidget {
  const RecentlyViewedBody({super.key});

  @override
  State<RecentlyViewedBody> createState() => _RecentlyViewedBodyState();
}

class _RecentlyViewedBodyState extends State<RecentlyViewedBody> {
  List<Map<String, dynamic>> recentlyArr = [
    {
      'name': 'The Fatal Tree',
      'author': 'by Jake Arnott',
      'image': 'assets/images/The Fatal Tree.png',
    },
    {
      'name': 'Day Four',
      'author': 'by LOTZ, SARAH',
      'image': 'assets/images/Day Four.png',
    },
    {
      'name': 'Door to Door',
      'author': 'by Edward Humes',
      'image': 'assets/images/D2D.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Recently Viewed',
                style: Styles.TextStyle24,
              ),
            ],
          ),
        ),
        SizedBox(
          height: mediaQuery.width,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 3),
            scrollDirection: Axis.horizontal,
            itemCount: recentlyArr.length,
            itemBuilder: (context, index) =>
                RecentlyViewedItem(itemsObj: recentlyArr[index]),
          ),
        ),
      ],
    );
    ;
  }
}
