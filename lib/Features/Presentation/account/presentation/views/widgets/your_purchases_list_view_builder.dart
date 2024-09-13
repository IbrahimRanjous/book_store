import 'package:flutter/material.dart';

import '../../../../book_reading/presentation/views/book_reading_view.dart';

class YourPurchasesListViewBuilder extends StatelessWidget {
  const YourPurchasesListViewBuilder({
    super.key,
    required this.mediaQuery,
    required this.recentlyArr,
  });

  final Size mediaQuery;
  final List<Map<String, dynamic>> recentlyArr;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaQuery.width,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
        scrollDirection: Axis.horizontal,
        itemCount: recentlyArr.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BookReadingView(
                  objBookReading: recentlyArr[index],
                ),
              ),
            );
          },
          child: Container(
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
                    recentlyArr[index]['image']?.toString() ?? '',
                    fit: BoxFit.cover,
                    width: mediaQuery.width * 0.5,
                    height: mediaQuery.width * 0.6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
