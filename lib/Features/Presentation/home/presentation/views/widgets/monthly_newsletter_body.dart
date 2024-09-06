import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../sign in/up/presentation/views/widgets/custom_text_field.dart';

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
    var screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
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
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.03),
            decoration: BoxDecoration(
              color: TColor.primaryLight,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.height * 0.02,
                      left: screenSize.width * 0.03,
                      right: screenSize.width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'Receive our monthly newsletter and receive updates on new stock, books and the occasional promotion.',
                          style: Styles.TextStyle11.copyWith(
                              color: TColor.subTitle),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                customTextFiled(
                  controller: name,
                  hintText: 'Name',
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                customTextFiled(
                  controller: email,
                  hintText: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: screenSize.height * 0.01),
                  child: Row(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
