import 'package:flutter/material.dart';

class OnboadrdingView extends StatefulWidget {
  const OnboadrdingView({super.key});

  @override
  State<OnboadrdingView> createState() => _OnboadrdingViewState();
}

class _OnboadrdingViewState extends State<OnboadrdingView> {
  List pageArr = [
    {
      "title": "DiscountedSecondhand Books",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
