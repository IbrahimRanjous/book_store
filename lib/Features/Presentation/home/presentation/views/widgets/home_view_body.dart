import 'package:book_store/Features/Presentation/home/presentation/views/widgets/best_selles_body.dart';
import 'package:book_store/Features/Presentation/home/presentation/views/widgets/build_align.dart';
import 'package:book_store/Features/Presentation/home/presentation/views/widgets/build_app_bar.dart';
import 'package:book_store/Features/Presentation/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:book_store/Features/Presentation/home/presentation/views/widgets/genres_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  buildAlign(mediaQuery: mediaQuery),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: mediaQuery.width * .12,
                      ),
                      const BuildAppBar(),
                      SizedBox(
                        height: mediaQuery.width * 0.08,
                      ),
                      CustomCarouselSlider(mediaQuery: mediaQuery),
                      const BestSellesBody(),
                      const GenresViewBody(),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
