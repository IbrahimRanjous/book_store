import 'package:flutter/material.dart';

class GenresItem extends StatelessWidget {
  const GenresItem({super.key, required this.itemsObj});

  final Map itemsObj;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        children: [
          Image.asset(itemsObj['image']),
          Text(itemsObj['name']),
        ],
      ),
    );
  }
}
