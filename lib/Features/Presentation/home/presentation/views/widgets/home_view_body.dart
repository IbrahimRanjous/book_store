import 'package:flutter/material.dart';
import 'best_selles_body.dart';
import 'build_align.dart';
import 'build_app_bar.dart';
import 'custom_carousel_slider.dart';
import 'custom_drawer.dart';
import 'genres_view_body.dart';
import 'monthly_newsletter_body.dart';
import 'recently_viewed_body.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
    required this.sideMenuScaffoldKey,
  });
  final GlobalKey<ScaffoldState> sideMenuScaffoldKey;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectMenu = 0;
  List menuArr = [
    {
      'name': 'Home',
      'icon': Icons.home,
    },
    {
      'name': 'Our Books',
      'icon': Icons.menu_book,
    },
    {
      'name': 'Our Stores',
      'icon': Icons.storefront,
    },
    {
      'name': 'Careers',
      'icon': Icons.business_center,
    },
    {
      'name': 'Sell With Us',
      'icon': Icons.attach_money,
    },
    {
      'name': 'News letter',
      'icon': Icons.newspaper,
    },
    {
      'name': 'Pop-up Leasing',
      'icon': Icons.open_in_new,
    },
    {
      'name': 'Account',
      'icon': Icons.account_circle,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: CustomDrawer(
          mediaQuery: mediaQuery, menuArr: menuArr, selectMenu: selectMenu),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  BuildAlign(
                    mediaQuery: mediaQuery,
                  ),
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
                      const RecentlyViewedBody(),
                      const MonthlyNewsletterBody(),
                      SizedBox(
                        height: mediaQuery.width * 0.3,
                      ),
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
