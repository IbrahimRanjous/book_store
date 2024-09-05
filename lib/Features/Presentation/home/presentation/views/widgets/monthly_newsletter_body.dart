import 'package:book_store/Features/Presentation/onboarding/presentation/views/widgets/custom_text_botton.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_elevated_button.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_text_field.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/styles.dart';

class MonthlyNewsletterBody extends StatefulWidget {
  const MonthlyNewsletterBody({super.key});

  @override
  State<MonthlyNewsletterBody> createState() => _MonthlyNewsletterBodyState();
}

class _MonthlyNewsletterBodyState extends State<MonthlyNewsletterBody> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Monthly Newsletter',
                style: Styles.TextStyle24,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: TColor.primaryLight,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Receive our monthly newsletter and receive updates\n on new stock, books and the occasional promotion.',
                      style:
                          Styles.TextStyle11.copyWith(color: TColor.subTitle),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              customTextFiled(
                controller: name,
                hintText: 'Name',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 12,
              ),
              customTextFiled(
                controller: email,
                hintText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    onPressed: () => context.push(AppRouter.kSignUpView),
                    backGroundColor: TColor.primary,
                    textColor: Colors.white,
                    text: 'Sign Up',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
