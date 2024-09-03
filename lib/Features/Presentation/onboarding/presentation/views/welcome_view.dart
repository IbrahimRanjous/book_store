import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_material_button.dart';
import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/custom_text.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/welcome_bg.png',
            width: mediaQuery.width,
            height: mediaQuery.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Container(
              width: mediaQuery.width,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: mediaQuery.width * .25,
                  ),
                  customText(
                    text: 'Books For \nEvery Taste',
                    textStyle: Styles.TextStyle30.copyWith(
                      color: TColor.primary,
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.width * .25,
                  ),
                  customMaterialButton(
                    text: 'Log in',
                    onPressed: () => context.push(AppRouter.kLogInView),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  customMaterialButton(
                    text: 'Sign up',
                    onPressed: () => context.push(AppRouter.kSignUpView),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
