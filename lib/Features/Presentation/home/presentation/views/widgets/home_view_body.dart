import 'package:book_store/Features/Presentation/home/presentation/views/widgets/build_align.dart';
import 'package:book_store/core/utils/styles.dart';
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        title: Text(
                          'Our Top Picks',
                          style:
                              Styles.TextStyle24.copyWith(color: Colors.white),
                        ),
                        leading: Container(),
                        actions: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.menu),
                          ),
                        ],
                      )
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
