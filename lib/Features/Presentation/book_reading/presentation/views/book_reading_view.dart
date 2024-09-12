import 'package:flutter/material.dart';

import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import 'widgets/show_modal_bottom_sheet_body.dart';
import 'package:flutter_screen_wake/flutter_screen_wake.dart';

class BookReadingView extends StatefulWidget {
  const BookReadingView({super.key, required this.objBookReading});
  final Map objBookReading;

  @override
  State<BookReadingView> createState() => _BookReadingViewState();
}

class _BookReadingViewState extends State<BookReadingView> {
  bool isDark = false;
  double fontSize = 20;
  double brightness = 0.5;

  Future<void> initPlatformBrightness() async {
    double bright;
    try {
      bright = await FlutterScreenWake.brightness;
    } on PlatformException {
      bright = 1.0;
    }
    if (!mounted) return;
    setState(() {
      brightness = bright;
    });
  }

  Future<void> setPlatformBrightness(double value) async {
    await FlutterScreenWake.setBrightness(value / 100);
    setState(() {
      brightness = value / 100;
    });
  }

  @override
  void initState() {
    super.initState();
    initPlatformBrightness();
    FlutterScreenWake.keepOn(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: false,
              floating: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                widget.objBookReading['name'].toString(),
                style: Styles.TextStyle20.copyWith(
                  color: isDark ? Colors.white : TColor.text,
                ),
              ),
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: TColor.primary,
                ),
              ),
              actions: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Switch(
                      activeColor: TColor.primary,
                      value: isDark,
                      onChanged: (value) {
                        setState(() {
                          isDark = value;
                        });
                      },
                    ),
                    Text(
                      'Dark',
                      style: TextStyle(
                        color: isDark ? Colors.white : TColor.text,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          context: context,
                          builder: (context) => ShowModalBottomSheetBody(
                            isDark: isDark,
                            fontSize: fontSize,
                            brightness: brightness,
                            onChangedBritness: (double value) {
                              setPlatformBrightness(value);
                            },
                            onChangedFontSize: (double value) {
                              setState(() {
                                fontSize = value < 10 ? 8 : value;
                              });
                            },
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.settings,
                        color: TColor.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SelectableText(
            """SHORTLY AFTER DARK ON THE AFTERNOON OF DECEMBER 5, 1997, an urgent message was relayed to a man named Yuri Trush at his home in Luchegorsk, a mid-sized mining town in Primorye Territory in Russia’s Far East, not far from the Chinese border. Primorye (Pri-mor-
ya) is, among other things, the last stronghold of the Siberian tiger, and the official on the line had some disturbing news: a man had been attacked near Sobolonye, a small logging community located in the deep forest, sixty miles northeast of Luchegorsk. Yuri Trush was the squad leader of an Inspection Tiger unit, one of six in the territory whose purpose was to investigate forest crimes, specifically those involving tigers. 

     Because poachers were often involved, these included tiger attacks. As a result, this situation—whatever it might entail—was now Trush’s problem and, right away, he began preparing for the trip to Sobolonye.

     Early the following morning—Saturday—Yuri Trush, along with his squadmates Alexander Gorborukov and Sasha Lazurenko, piled into a
surplus army truck and rumbled north. Dressed in insulated fatigues and camouflage, and armed with knives, pistols, and semiautomatic rifles, the Tigers, as these inspectors are sometimes called, looked less like game wardens than like some kind of wilderness SWAT team. Their twenty-year-old truck was nicknamed a Kung, and it was the Russian army’s four-ton equivalent to the Unimog and the Humvee. Gasoline-powered,
with a winch, four-wheel-drive, and wide waist-high tires, it is a popular vehicle in Primorye’s hinterlands.

     Along with a gun rack and brackets for
extra fuel cans, this one had been modified to accommodate makeshift bunks, and was stocked with enough food to last four men a week.""",
            style: Styles.TextStyle20.copyWith(
              color: isDark ? Colors.white : Colors.black,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
