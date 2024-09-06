import 'package:book_store/Features/Presentation/search/presentation/views/widgets/custom_text_search.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/app_router.dart';
import 'custom_grid_view.dart';
import 'horizontal_filter_list.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  int selectMenu = 0;

  List filterArr = [
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
  List gridItemArr = [
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
            const SizedBox(
              height: 30,
            ),
            CustomTextSearch(
              onTap: () {
                context.push(AppRouter.kSearchFocusView);
              },
              controller: search,
              hintText: 'Search Books, Authors, or ISBN',
            ),
            HorizontalFilterList(
              filterArr: filterArr,
              selectMenu: selectMenu,
              onItemTap: (index) {
                setState(() {
                  selectMenu = index;
                });
              },
            ),
            CustomGridView(mediaQuery: mediaQuery, gridItemArr: gridItemArr),
          ],
        ),
      ),
    );
  }
}
