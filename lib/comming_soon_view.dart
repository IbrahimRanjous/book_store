import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CommingSoonView extends StatelessWidget {
  const CommingSoonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.primaryLight,
      // appBar: AppBar(
      //   backgroundColor: TColor.primaryLight,
      //   leading: IconButton(
      //       onPressed: () {
      //         context.pop();
      //       },
      //       icon: const Icon(Icons.arrow_back_ios)),
      // ),
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
