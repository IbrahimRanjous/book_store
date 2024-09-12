import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../onboarding/presentation/views/widgets/custom_text_botton.dart';

// ignore: must_be_immutable
class CustomDrawer extends StatefulWidget {
  CustomDrawer({
    super.key,
    required this.mediaQuery,
    required this.menuArr,
    required this.selectMenu,
  });
  int selectMenu;
  final Size mediaQuery;
  final List menuArr;

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Drawer(
      width: widget.mediaQuery.width * 0.8,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: TColor.sideMenu,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(widget.mediaQuery.width * 0.7)),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: widget.mediaQuery.width * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: widget.mediaQuery.width * 0.3,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: widget.menuArr.map(
                  (item) {
                    var index = widget.menuArr.indexOf(item);
                    return InkWell(
                      borderRadius: BorderRadius.circular(16),
                      splashColor: TColor.primary,
                      onTap: () {
                        setState(() {
                          switch (index) {
                            case 0:
                              context.go(AppRouter.kHomeView);
                            case 1:
                              context.push(AppRouter.kOurBookView);
                            case 2:
                              context.push(AppRouter.KCommingSoonView);
                            case 3:
                              context.push(AppRouter.KCommingSoonView);
                            case 4:
                              context.push(AppRouter.KCommingSoonView);
                            case 5:
                              context.push(AppRouter.KCommingSoonView);
                            case 6:
                              context.push(AppRouter.KCommingSoonView);
                            case 7:
                              context.push(AppRouter.kAccountView);
                          }

                          widget.selectMenu = index;
                        });
                        // context.pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: index == widget.selectMenu
                            ? BoxDecoration(
                                color: TColor.primary,
                                boxShadow: [
                                  BoxShadow(
                                      color: TColor.primaryLight,
                                      blurRadius: 4,
                                      offset: const Offset(0, 8)),
                                ],
                              )
                            : null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              item['name'].toString(),
                              style: index == widget.selectMenu
                                  ? Styles.TextStyle20.copyWith(
                                      color: Colors.white)
                                  : Styles.TextStyle20,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Icon(
                              item['icon'] ?? Icons.device_unknown,
                              size: 32,
                              color: index == widget.selectMenu
                                  ? Colors.white
                                  : TColor.primary,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.settings),
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.01,
                    ),
                    CustomTextButton(
                      text: 'Terms',
                      onPressed: () => context.pop(),
                      color: TColor.primary,
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.05,
                    ),
                    CustomTextButton(
                      text: 'Privacy',
                      onPressed: () => context.pop(),
                      color: TColor.primary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
