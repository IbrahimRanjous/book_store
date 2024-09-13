import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OurBookView extends StatefulWidget {
  const OurBookView({super.key});

  @override
  State<OurBookView> createState() => _OurBookViewState();
}

class _OurBookViewState extends State<OurBookView> {
  List imagesArr = [
    'assets/images/Mask Group 1.png',
    'assets/images/Mask Group 2.png',
    'assets/images/Mask Group 3.png'
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  'assets/images/our_book_top.png',
                  width: mediaQuery.width,
                  fit: BoxFit.fitHeight,
                ),
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                ),
                Container(
                  height: mediaQuery.width * 0.9,
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: imagesArr.map((iName) {
                        bool isFirst = imagesArr.first == iName;
                        bool isLast = imagesArr.last == iName;
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.only(
                              left: isFirst ? 15 : 0, right: isLast ? 15 : 0),
                          child: Image.asset(
                            iName,
                            height: 120,
                            fit: BoxFit.fitHeight,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Text(
                """The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.

Our specialty is sourcing discounted books of amazing quality and passing on to our customers the best possible price.
We take our book buying very seriously indeed. We scour the globe and the best publishers and suppliers for the best bargains, but no book simply arrives in our warehouse simply because it's cheap. It has to be something we want to read ourselves and would reccomend to others.
We like to be known as the business which sells discounted books yet looks and feels like a retail bookstore.

We are an Australian, family-owned business. We have been buying and selling books since 2000, when the first Castlebooks store opened in Kingston, ACT.

In 2007 we opened the first Book Grocer in Brunswick, Victoria. Book Grocers can now be found in a range of locations across Victoria, NSW, and of course, Canberra.

Our staff also love reading and recommending books to others and we are proud of the role they play in demonstrating to our customers how good discount books can be.""",
                style: Styles.TextStyle15,
                textAlign: TextAlign.left,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
