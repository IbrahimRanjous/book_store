import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/custom_text_botton.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_drop_down_button.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelpUsViewBody extends StatefulWidget {
  const HelpUsViewBody({super.key});

  @override
  State<HelpUsViewBody> createState() => _HelpUsViewBodyState();
}

class _HelpUsViewBodyState extends State<HelpUsViewBody> {
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Help Us & Help You',
              style: Styles.TextStyle24.copyWith(color: TColor.text),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'It seems as this is your first time using our app, please enter your location so we can filter our results and stock accordingly to your local store. \n\nIf you choose to skip, you can change yourlocation at any time in your account settings.',
              style: Styles.TextStyle15.copyWith(color: TColor.subTitle),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomDropDownButton(
              hint: 'State',
              itemsList: ['state1', 'state2'],
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomDropDownButton(
              hint: 'City',
              itemsList: ['city1', 'city2'],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextButton(
                    text: 'Skip',
                    onPressed: () => context.go(AppRouter.kMainTabView),
                    color: TColor.primary,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
