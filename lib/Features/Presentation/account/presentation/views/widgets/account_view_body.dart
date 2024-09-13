import 'package:flutter/material.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../book_reading/presentation/views/book_reading_view.dart';
import 'book_card_info.dart';
import 'up_part_of_account_view_body.dart';
import 'your_purchases_list_view_builder.dart';

class AccountViewBody extends StatefulWidget {
  const AccountViewBody({
    super.key,
  });

  @override
  State<AccountViewBody> createState() => _AccountViewBodyState();
}

class _AccountViewBodyState extends State<AccountViewBody> {
  List<Map<String, dynamic>> recentlyArr = [
    {
      'name': 'The Great Disruption',
      'about':
          'A must read for everybody. This book taught me so many things about...',
      'rating': 5.0,
      'image': 'assets/images/1.png',
    },
    {
      'name': 'The Firm',
      'about': 'Unbelievable value, next level storytelling.',
      'rating': 2.5,
      'image': 'assets/images/2.png',
    },
    {
      'name': 'Big Big Disruption',
      'about': 'This book taught me so many things about...',
      'rating': 4.0,
      'image': 'assets/images/3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpPartOfAccountViewBody(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Text(
                'Your purchases (21)',
                style: Styles.TextStyle20.copyWith(
                  color: TColor.subTitle,
                ),
              ),
            ),
            YourPurchasesListViewBuilder(recentlyArr: recentlyArr),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Text(
                'Your reviews (5)',
                style: Styles.TextStyle20.copyWith(
                  color: TColor.subTitle,
                ),
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  height: constraints.maxWidth * 0.65,
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    scrollDirection: Axis.vertical,
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
                      child: BookCardInfo(
                        recentlyArr: recentlyArr[index],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
