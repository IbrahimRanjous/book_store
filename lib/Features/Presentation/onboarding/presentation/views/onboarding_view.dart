import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/bottom_part_body.dart';
import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/custom_text.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  List pageArr = [
    {
      "title": 'Discounted \nSecondhand Books',
      "sub_title": "Used and near new secondhand books at great prices.",
      "img": "assets/images/on_1.png"
    },
    {
      "title": "20 Book Grocers Nationally",
      "sub_title": "We've successfully opened 20 stores across Australia.",
      "img": "assets/images/on_2.png"
    },
    {
      "title": "Sell or Recycle Your Old Books With Us",
      "sub_title":
          "If you're looking to downsize, sell or recycle old books, the Book Grocer can help.",
      "img": "assets/images/on_3.png"
    },
  ];
  int page = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      page = controller.page?.round() ?? 0;
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                var pObJ = pageArr[index] as Map? ?? {};
                return Container(
                  width: mediaQuery.width,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: pObJ['title'].toString(),
                        textStyle: Styles.TextStyle30.copyWith(
                          color: TColor.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomText(
                        text: pObJ['sub_title'].toString(),
                        textStyle:
                            Styles.TextStyle12.copyWith(color: TColor.primary),
                      ),
                      SizedBox(
                        height: mediaQuery.height * .1,
                      ),
                      Image.asset(
                        pObJ['img'].toString(),
                        width: mediaQuery.width * .6,
                        height: mediaQuery.height * .5,
                        fit: BoxFit.fitWidth,
                      )
                    ],
                  ),
                );
              },
            ),
            BottomPartBody(
              mediaQuery: mediaQuery,
              pageArr: pageArr,
              page: page,
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
