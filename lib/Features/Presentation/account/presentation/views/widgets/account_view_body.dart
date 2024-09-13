import 'package:book_store/Features/Presentation/home/presentation/views/widgets/recently_viewed_body.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../book_reading/presentation/views/book_reading_view.dart';
import '../../../../home/presentation/views/widgets/recently_viewed_item.dart';
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
            YourPurchasesListViewBuilder(
                mediaQuery: mediaQuery, recentlyArr: recentlyArr),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Text(
                'Your reviews (5)',
                style: Styles.TextStyle20.copyWith(
                  color: TColor.subTitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
