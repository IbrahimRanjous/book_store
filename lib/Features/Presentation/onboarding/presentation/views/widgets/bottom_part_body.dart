import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/custom_text_botton.dart';
import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/dotes_side_show.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/color_extenstion.dart';

class bottomPartBody extends StatelessWidget {
  const bottomPartBody({
    super.key,
    required this.mediaQuery,
    required this.pageArr,
    required this.page,
    required this.controller,
  });

  final Size mediaQuery;
  final List pageArr;
  final int page;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    int increasePage = page;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButton(
                onPressed: () => context.go(AppRouter.kWelcomeView),
                text: 'Skip', color: TColor.primary,
              ),
              SizedBox(
                width: mediaQuery.width * .05,
              ),
              dotsSideShow(
                pageArr: pageArr,
                page: increasePage,
                mediaQuery: mediaQuery,
              ),
              SizedBox(
                width: mediaQuery.width * .05,
              ),
              CustomTextButton(
                onPressed: () {
                  if (increasePage < 2) {
                    increasePage++;
                    controller.jumpToPage(increasePage);
                  } else {
                    context.go(AppRouter.kWelcomeView);
                  }
                },
                text: 'Next', color: TColor.primary,
              ),
              SizedBox(
                height: mediaQuery.height * .12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
