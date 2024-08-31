import 'package:book_store/Features/Presentation/onboarding/presentation/views/welcom_view.dart';
import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/custom_text.dart';
import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/custom_text_botton.dart';
import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/dotes_side_show.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboadrdingView extends StatefulWidget {
  const OnboadrdingView({super.key});

  @override
  State<OnboadrdingView> createState() => _OnboadrdingViewState();
}

class _OnboadrdingViewState extends State<OnboadrdingView> {
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
                      customText(
                        text: pObJ['title'].toString(),
                        textStyle: TextStyle(
                          color: TColor.primary,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      customText(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const WelcomView())),
                        text: 'Skip',
                      ),
                      dotsSideShow(
                        pageArr: pageArr,
                        page: page,
                        mediaQuery: mediaQuery,
                      ),
                      CustomTextButton(
                        onPressed: () {
                          if (page < 2) {
                            page++;
                            controller.jumpToPage(page);
                          } else {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const WelcomView()));
                          }
                        },
                        text: 'Next',
                      ),
                      SizedBox(
                        height: mediaQuery.height * .12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
