import 'package:book_store/Features/Presentation/cart/presentation/views/cart_view.dart';
import 'package:book_store/Features/Presentation/home/presentation/views/home_view.dart';
import 'package:book_store/Features/Presentation/menu/presentation/views/menu_view.dart';
import 'package:book_store/Features/Presentation/search/presentation/views/search_view.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: const [
          HomeView(),
          SearchView(),
          MenuView(),
          CartView(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: TColor.primary,
        child: TabBar(
          dividerColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.white,
          labelColor: TColor.text,
          controller: controller,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              text: 'Home',
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              text: 'Search',
            ),
            Tab(
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
              text: 'Menu',
            ),
            Tab(
              icon: Icon(
                Icons.shopping_bag,
                size: 30,
              ),
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
