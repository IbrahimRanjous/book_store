import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    required this.itemsObj,
  });

  final Map<String, dynamic> itemsObj;

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: mediaQuery.width * .4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black38, offset: Offset(0, 2), blurRadius: 8)
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              itemsObj['image']?.toString() ?? '',
              fit: BoxFit.cover,
              width: mediaQuery.width * .4,
              height: mediaQuery.width * 0.50,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          itemsObj['name']?.toString() ?? '',
          textAlign: TextAlign.center,
          style: Styles.TextStyle15.copyWith(color: TColor.text),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          itemsObj['auther']?.toString() ?? '',
          textAlign: TextAlign.center,
          style: Styles.TextStyle12.copyWith(color: TColor.subTitle),
        ),
      ],
    );
  }
}
