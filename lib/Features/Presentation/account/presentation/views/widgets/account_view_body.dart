import 'package:flutter/material.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../../../core/utils/styles.dart';
import 'up_part_of_account_view_body.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({
    super.key,
  });

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
                style: Styles.TextStyle24.copyWith(
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
