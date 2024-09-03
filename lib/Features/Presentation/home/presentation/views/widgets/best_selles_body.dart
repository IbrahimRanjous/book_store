import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellesBody extends StatelessWidget {
  const BestSellesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Our Top Picks',
            style: Styles.TextStyle24,
          ),
          leading: Container(),
          leadingWidth: 1,
        ),
      ],
    );
  }
}
