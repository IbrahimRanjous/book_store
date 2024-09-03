import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
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
  List topPickArr = [
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
          var itemsObj = topPickArr[itemIndex] as Map? ?? {};
          return SizedBox(
            width: widget.mediaQuery.width * .32,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: widget.mediaQuery.width * 0.45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2, 8),
                            blurRadius: 8)
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      itemsObj['image'].toString(),
                      fit: BoxFit.cover,
                      width: widget.mediaQuery.width * .32,
                      height: widget.mediaQuery.width * 0.50,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  itemsObj['name'].toString(),
                  textAlign: TextAlign.center,
                  style: Styles.TextStyle15.copyWith(color: TColor.text),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  itemsObj['auther'].toString(),
                  textAlign: TextAlign.center,
                  style: Styles.TextStyle12.copyWith(color: TColor.subTitle),
                ),
              ],
            ),
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
