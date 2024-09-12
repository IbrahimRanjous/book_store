import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_elevated_button.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/custom_text_field.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({
    super.key,
  });

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: Styles.TextStyle24.copyWith(color: TColor.text),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFiled(
              controller: email,
              hintText: 'Email Address',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomElevatedButton(
              onPressed: () {},
              title: 'Submit',
            ),
          ],
        ),
      ),
    );
  }
}
