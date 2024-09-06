import 'package:book_store/Features/Presentation/search/presentation/views/widgets/custom_text_search.dart';
import 'package:flutter/material.dart';
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
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomTextSearch(
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
          ],
        ),
      ),
    );
  }
}
