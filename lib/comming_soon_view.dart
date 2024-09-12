import 'package:book_store/core/utils/color_extenstion.dart';
 import 'package:flutter/material.dart';

class CommingSoonView extends StatelessWidget {
  const CommingSoonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.primaryLight,
      body: const Center(
        child: Text(
          'Comming Soon',
          style: TextStyle(
            fontSize: 40,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
