import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_elevated_button.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_text_field.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({
    super.key,
  });

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isStayLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log In',
              style: Styles.TextStyle24.copyWith(color: TColor.text),
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
              controller: password,
              hintText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Text(
                  'Stay Logged In',
                  style: Styles.TextStyle12.copyWith(
                    color: TColor.subTitle.withOpacity(.5),
                  ),
                ),
                const Spacer(),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: getColor(Colors.white, TColor.primaryLight),
                  ),
                  onPressed: () {
                    context.push(AppRouter.kForgotPasswordView);
                  },
                  child: Text('Forgot Your Password?',
                      style: Styles.TextStyle12.copyWith(
                        color: TColor.primary,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CustomElevatedButton(
              onPressed: () => context.go(AppRouter.kMainTabView),
              title: 'Log In',
            ),
          ],
        ),
      ),
    );
  }

  WidgetStateProperty<Color>? getColor(Color color, Color colorPressed) {
    return WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.pressed) ? colorPressed : color);
  }
}
