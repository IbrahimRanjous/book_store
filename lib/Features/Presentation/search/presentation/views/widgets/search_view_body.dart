import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom_grid_view.dart';
import 'horizontal_filter_list.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  int selectMenu = 0;

  final List _filterArr = [
    {
      'name': 'Genre',
    },
    {
      'name': 'New Release',
    },
    {
      'name': 'The Arts',
    },
    {
      'name': 'The Best Seller',
    },
    {
      'name': 'Recently Viewed',
    },
  ];

  final List _gridItemArr = [
    {
      'name': 'Biography',
      'image': 'assets/images/Biography.png',
    },
    {
      'name': 'Business',
      'image': 'assets/images/Business.png',
    },
    {
      'name': 'Children',
      'image': 'assets/images/Children.png',
    },
    {
      'name': 'Cookery',
      'image': 'assets/images/Cookery.png',
    },
    {
      'name': 'Fiction',
      'image': 'assets/images/Fiction.png',
    },
    {
      'name': 'Graphic Novels',
      'image': 'assets/images/Graphic Novels.png',
    },
    {
      'name': 'Biography',
      'image': 'assets/images/Biography.png',
    },
    {
      'name': 'Business',
      'image': 'assets/images/Business.png',
    },
    {
      'name': 'Children',
      'image': 'assets/images/Children.png',
    },
    {
      'name': 'Cookery',
      'image': 'assets/images/Cookery.png',
    },
    {
      'name': 'Fiction',
      'image': 'assets/images/Fiction.png',
    },
    {
      'name': 'Graphic Novels',
      'image': 'assets/images/Graphic Novels.png',
    },
  ];
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            HorizontalFilterList(
              filterArr: _filterArr,
              selectMenu: selectMenu,
              onItemTap: (index) {
                setState(() {
                  selectMenu = index;
                });
              },
            ),
            CustomGridView(mediaQuery: mediaQuery, gridItemArr: _gridItemArr),
          ],
        ),
      ),
    );
  }
}
