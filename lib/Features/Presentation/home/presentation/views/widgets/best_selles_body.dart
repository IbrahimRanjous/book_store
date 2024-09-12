import 'package:book_store/Features/Presentation/book_reading/presentation/views/book_reading_view.dart';
import 'package:book_store/Features/Presentation/home/presentation/views/widgets/book_item_with_rating.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellesBody extends StatefulWidget {
  const BestSellesBody({super.key});

  @override
  State<BestSellesBody> createState() => _BestSellesBodyState();
}

class _BestSellesBodyState extends State<BestSellesBody> {
  List<Map<String, dynamic>> bestSellerArr = [
    {
      'name': 'Fatherhood',
      'author': 'by Christopher Wilson',
      'image': 'assets/images/The Zoo.png',
      'rating': 4.0,
    },
    {
      'name': 'In A Land Of Paper Gods',
      'author': 'by Rebecca Mackenzie',
      'image': 'assets/images/In A Land Of Paper Gods.png',
      'rating': 5.0,
    },
    {
      'name': 'Tattletale',
      'author': 'by Sarah J. Noughton',
      'image': 'assets/images/Tattletale-1.png',
      'rating': 3.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Best Sellers',
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
            itemCount: bestSellerArr.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BookReadingView(
                      objBookReading: bestSellerArr[index],
                    ),
                  ),
                );
              },
              child: BookItemWithRating(
                itemsObj: bestSellerArr[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
