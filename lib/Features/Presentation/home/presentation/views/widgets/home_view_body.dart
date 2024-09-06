import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'best_selles_body.dart';
import 'build_align.dart';
import 'build_app_bar.dart';
import 'custom_carousel_slider.dart';
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
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: TColor.primary,
      //   title: const Text(
      //     'Our Top Picks',
      //     textAlign: TextAlign.start,
      //   ),
      // ),
      // endDrawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 24,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text('Home'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('Settings'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.contact_mail),
      //         title: Text('Contact'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),

      // ),
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
