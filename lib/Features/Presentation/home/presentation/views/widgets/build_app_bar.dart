import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildAppBar extends StatefulWidget {
  const BuildAppBar({
    super.key,
  });

  @override
  State<BuildAppBar> createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Text(
            'Our Top Picks',
            style: Styles.TextStyle24.copyWith(color: Colors.white),
          ),
        ],
      ),
      leading: Container(),
      leadingWidth: 1,
      actions: [
        Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                size: 34,
                color: Colors.white,
              ),
            );
          },
        ),
      ],
    );
  }
}
