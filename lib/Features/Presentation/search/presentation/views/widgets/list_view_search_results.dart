import 'package:flutter/material.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../../../core/utils/styles.dart';

class ListViewSearchResults extends StatelessWidget {
  const ListViewSearchResults({
    super.key,
    required this.itemsArr,
  });

  final List itemsArr;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          itemCount: itemsArr.length,
          itemBuilder: (context, index) {
            var searchResultText = itemsArr[index] as String? ?? " ";
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children: [
                  const Icon(
                    (Icons.search),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      searchResultText,
                      style: Styles.TextStyle12,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'times',
                    style: Styles.TextStyle12.copyWith(color: TColor.primary),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
