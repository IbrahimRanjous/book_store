import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../onboarding/presentation/views/widgets/custom_text_botton.dart';
import 'custom_text_filed_result.dart';
import 'list_view_search_results.dart';

class SearchFocusView extends StatefulWidget {
  const SearchFocusView({super.key});

  @override
  State<SearchFocusView> createState() => _SearchFocusViewState();
}

class _SearchFocusViewState extends State<SearchFocusView> {
  List previousArr = [
    'Search 1 ',
    'Search 2 ',
    'Search 3 ',
    'Search 4 ',
  ];
  List resultArr = [
    'Gross Anatomy',
    'When To Rob A Bank',
    'The Bite In The Apple',
    'The Ignorant Maestro',
  ];

  TextEditingController searchResult = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isSearchResult = searchResult.text.isEmpty;
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomTextFiledResult(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: searchResult,
                      hintText: 'Search Here',
                    ),
                  ),
                  SizedBox(
                    width: mediaQuery.width * 0.03,
                  ),
                  CustomTextButton(
                    text: 'Cancle',
                    color: TColor.subTitle,
                    onPressed: () => (context).pop(),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Previous Searches',
                style: Styles.TextStyle12.copyWith(color: TColor.subTitle),
              ),
              ListViewSearchResults(
                itemsArr: isSearchResult ? previousArr : resultArr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
