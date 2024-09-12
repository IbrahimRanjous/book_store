import 'package:book_store/Features/Presentation/search/presentation/views/widgets/list_view_search_results.dart';
import 'package:book_store/core/utils/extention.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_text_search.dart';
import 'widgets/search_view_body.dart';

class SearchView extends StatefulWidget {
  const SearchView({
    super.key,
  });

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController _controller = TextEditingController();
  final List<String> _allItems = [
    'Genre',
    'New Release',
    'The Arts',
    'The Best Seller',
    'Recently Viewed',
    'Biography',
    'Business',
    'Children',
    'Cookery',
    'Fiction',
    'Graphic Novels',
  ];
  List<String> _filteredItems = [];
  List<String> _enteredItems = [];

  bool isClicked = false;
  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems + _enteredItems;
  }

  void _filterItems(String query) {
    setState(() {
      _filteredItems = _allItems
              .where((item) => item.toLowerCase().contains(query.toLowerCase()))
              .toList() +
          _enteredItems
              .where((item) => item.toLowerCase().contains(query.toLowerCase()))
              .toList();
      isClicked = _controller.text.isNotEmpty;
    });
  }

  void _addSearchItem() {
    setState(() {
      if (_controller.text.isNotEmpty &&
          !_enteredItems.contains(_controller.text) &&
          !_allItems.contains(_controller.text)) {
        _enteredItems.add(_controller.text);
        _filterItems(_controller.text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          titleSpacing: 20,
          toolbarHeight: 80,
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomTextSearch(
              controller: _controller,
              hintText: 'Search Books, Authors, or ISBN',
              onChanged: _filterItems,
              onSearch: _addSearchItem,
              onSubmitted: (value) => _addSearchItem(),
              onTap: () {
                endEditing();
              },
            ),
          ),
        ),
        body: isClicked
            ? ListViewSearchResults(
                itemsArr: _filteredItems,
                didSearch: (sText) {
                  _controller.text = sText;
                  if (mounted) {
                    setState(() {
                      isClicked = false;
                    });
                  }
                },
              )
            : const SearchViewBody(),
      ),
    );
  }
}
