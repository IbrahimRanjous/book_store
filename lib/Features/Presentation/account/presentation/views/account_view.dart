import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/account_view_body.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: AccountViewBody(),
    );
  }
}
