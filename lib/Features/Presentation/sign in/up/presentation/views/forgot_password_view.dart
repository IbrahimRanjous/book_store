import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/forgot_password_view_body.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: TColor.primary,
          ),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: ForgotPasswordViewBody(),
        ),
      ),
    );
  }
}
