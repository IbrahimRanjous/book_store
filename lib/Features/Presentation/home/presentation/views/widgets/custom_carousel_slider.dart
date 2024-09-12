// ignore_for_file: depend_on_referenced_packages

import 'package:book_store/Features/Presentation/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({
    super.key,
    required this.mediaQuery,
  });

  final Size mediaQuery;

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  List<Map<String, dynamic>> topPickArr = [
    {
      'name': 'The Dissapearance of Emila Zola',
      'auther': 'Michael Rosen',
      'image': 'assets/images/Dissapearance of Emile Zola.png'
    },
    {
      'name': 'Fatherhood',
      'auther': 'Marcus Berkmann',
      'image': 'assets/images/Fatherhood-2.png'
    },
    {
      'name': 'The Time Travellers Handbook',
      'auther': 'Stride Lottie',
      'image': 'assets/images/How To Be The Best In Time And Space-1.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.mediaQuery.width,
      height: widget.mediaQuery.width,
      child: CarouselSlider.builder(
        itemCount: topPickArr.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return SizedBox(
            width: widget.mediaQuery.width * .32,
            child: BookItem(itemsObj: topPickArr[itemIndex]),
          );
        },
        options: CarouselOptions(
          height: 420,
          autoPlay: false,
          enlargeCenterPage: true,
          aspectRatio: 1,
          viewportFraction: 0.44,
          enlargeFactor: 0.2,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          animateToClosest: true,
        ),
      ),
    );
  }
}
