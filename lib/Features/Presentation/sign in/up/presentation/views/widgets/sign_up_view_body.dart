import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_elevated_button.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_text_field.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isStayLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: Styles.TextStyle24.copyWith(color: TColor.text),
            ),
            const SizedBox(
              height: 15,
            ),
            customTextFiled(
              controller: name,
              hintText: 'First & Last Name',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 15,
            ),
            customTextFiled(
              controller: email,
              hintText: 'Email Address',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 15,
            ),
            customTextFiled(
              controller: phonenumber,
              hintText: 'Phone Number',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(
              height: 15,
            ),
            customTextFiled(
              controller: password,
              hintText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isStayLoggedIn = !isStayLoggedIn;
                    });
                  },
                  icon: Icon(
                    isStayLoggedIn
                        ? Icons.check_box
                        : Icons.check_box_outline_blank,
                    color: isStayLoggedIn ? TColor.primary : TColor.subTitle,
                  ),
                ),
                Text('Please sign me up for the monthly newsletter.',
                    style: Styles.TextStyle12.copyWith(
                      color: TColor.subTitle.withOpacity(.5),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CustomElevatedButton(
              onPressed: () {
                context.push(AppRouter.kHelpUsView);
              },
              title: 'Sign In',
            ),
          ],
        ),
      ),
    );
  }
}
