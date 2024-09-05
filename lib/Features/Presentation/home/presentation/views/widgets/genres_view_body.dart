import 'package:book_store/Features/Presentation/home/presentation/views/widgets/genres_item.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class GenresViewBody extends StatefulWidget {
  const GenresViewBody({super.key});

  @override
  State<GenresViewBody> createState() => _GenresViewBodyState();
}

class _GenresViewBodyState extends State<GenresViewBody> {
  List<Map<String, dynamic>> genresArr = [
    {
      'name': 'Graphic Novels',
      'image': 'assets/images/Group 13.png',
    },
    // {
    //   'name': 'Graphic Novels',
    //   'image': 'assets/images/Group 13.png',
    // },
    // {
    //   'name': 'Graphic Novels',
    //   'image': 'assets/images/Group 13.png',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Genres',
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
            itemCount: genresArr.length,
            itemBuilder: (context, index) =>
                GenresItem(itemsObj: genresArr[index]),
          ),
        ),
      ],
    );
  }
}
