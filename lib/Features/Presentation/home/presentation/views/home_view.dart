import 'package:book_store/Features/Presentation/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.sideMenuScaffoldKey,
  });
  final GlobalKey<ScaffoldState> sideMenuScaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(sideMenuScaffoldKey: sideMenuScaffoldKey),
    );
  }
}
