import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/widgets/help_us_view_body.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelpUsView extends StatelessWidget {
  const HelpUsView({super.key});

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
        child: HelpUsViewBody(),
      ),
    );
  }
}
